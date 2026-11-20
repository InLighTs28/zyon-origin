#!/usr/bin/env bash
# ZyoN · uploads the release files of $TAG to CurseForge and Modrinth (datapack, resource pack, mod jar).
# Skips a site whose token is missing and a project whose id is not set in .github/publish.json.
set -euo pipefail
VER="${TAG#v}"
CFG=.github/publish.json
CL="changelogs/$VER"
DP="dist/$(jq -r .files.datapack $CFG)-$VER.zip"
RP="dist/$(jq -r .files.resourcepack $CFG)-$VER.zip"
JAR="dist/$(jq -r .files.mod $CFG)-$VER.jar"
UA="zyon-publisher/1.0 (GitHub Actions)"
for f in "$DP" "$RP" "$CL/datapack.md" "$CL/resourcepack.md"; do
  [ -f "$f" ] || { echo "::error::missing $f"; exit 1; }
done
CL_MOD="$CL/mod.md"; [ -f "$CL_MOD" ] || CL_MOD="$CL/datapack.md"
RT=$(jq -r '.release_type // "release"' $CFG)   # release | beta | alpha
NAME_DP="$(jq -r .names.datapack $CFG) $VER"
NAME_RP="$(jq -r .names.resourcepack $CFG) $VER"
NAME_MOD="$(jq -r .names.mod $CFG) $VER"

# ---------- CurseForge ----------
cf_upload() { # project_id file changelog display_name game_versions_json
  local meta
  meta=$(jq -n --rawfile cl "$3" --arg dn "$4" --arg rt "$RT" --argjson gv "$5" \
    '{changelog: $cl, changelogType: "markdown", displayName: $dn, gameVersions: $gv, releaseType: $rt}')
  curl -sS --fail-with-body -A "$UA" -H "X-Api-Token: $CF_TOKEN" \
    --form-string "metadata=$meta" -F "file=@$2" \
    "https://minecraft.curseforge.com/api/projects/$1/upload-file"
  echo
}
if [ -n "${CF_TOKEN:-}" ]; then
  GV=$(jq -c .curseforge.game_version_ids $CFG)
  CF_DP=$(jq -r '.curseforge.datapack_id // 0' $CFG)
  CF_RP=$(jq -r '.curseforge.resourcepack_id // 0' $CFG)
  CF_MOD=$(jq -r '.curseforge.mod_id // 0' $CFG)
  [ "$CF_DP" != "0" ] && cf_upload "$CF_DP" "$DP" "$CL/datapack.md" "$NAME_DP" "$GV"
  [ "$CF_RP" != "0" ] && cf_upload "$CF_RP" "$RP" "$CL/resourcepack.md" "$NAME_RP" "$GV"
  if [ "$CF_MOD" != "0" ] && [ -f "$JAR" ]; then
    # a mod file also needs the NeoForge loader entry: look its id up
    NF=$(curl -sS --fail-with-body -A "$UA" -H "X-Api-Token: $CF_TOKEN" https://minecraft.curseforge.com/api/game/versions \
         | jq '[.[] | select((.name | ascii_downcase) == "neoforge")][0].id')
    cf_upload "$CF_MOD" "$JAR" "$CL_MOD" "$NAME_MOD" "$(jq -c --argjson nf "$NF" '.curseforge.game_version_ids + [$nf]' $CFG)"
  fi
  echo "CurseForge: done"
else
  echo "::warning::CURSEFORGE_TOKEN not set, CurseForge skipped"
fi

# ---------- Modrinth ----------
if [ -z "${MR_TOKEN:-}" ]; then
  echo "::warning::MODRINTH_TOKEN not set, Modrinth skipped"; exit 0
fi
MR=https://api.modrinth.com/v2
MR_DP=$(jq -r '.modrinth.datapack_id // ""' $CFG)
MR_RP=$(jq -r '.modrinth.resourcepack_id // ""' $CFG)
MR_MOD=$(jq -r '.modrinth.mod_id // ""' $CFG)
# ids must be set explicitly in publish.json (no auto-detection: it could pick another project)
mr_upload() { # project_id file changelog name loaders_json deps_json
  local data
  data=$(jq -n --rawfile cl "$3" --arg n "$4" --arg rt "$RT" --arg v "$VER" --arg p "$1" --arg gv "$(jq -r .game_version $CFG)" \
    --argjson l "$5" --argjson d "$6" \
    '{name: $n, version_number: $v, changelog: $cl, dependencies: $d, game_versions: [$gv], version_type: $rt,
      loaders: $l, featured: true, project_id: $p, file_parts: ["file"], primary_file: "file"}')
  curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" \
    --form-string "data=$data" -F "file=@$2" "$MR/version" | jq -r '"Modrinth version " + .id'
}
DEPS='[]'
[ -n "$MR_RP" ] && DEPS=$(jq -n --arg p "$MR_RP" '[{project_id: $p, dependency_type: "required"}]')
if [ -n "$MR_DP" ]; then mr_upload "$MR_DP" "$DP" "$CL/datapack.md" "$NAME_DP" '["datapack"]' "$DEPS"; fi
if [ -n "$MR_RP" ]; then mr_upload "$MR_RP" "$RP" "$CL/resourcepack.md" "$NAME_RP" '["minecraft"]' '[]'; fi
if [ -n "$MR_MOD" ] && [ -f "$JAR" ]; then mr_upload "$MR_MOD" "$JAR" "$CL_MOD" "$NAME_MOD" '["neoforge"]' '[]'; fi
# projects created as drafts: send them to Modrinth review once they have a version
for P in "$MR_DP" "$MR_RP" "$MR_MOD"; do
  [ -n "$P" ] || continue
  ST=$(curl -sS -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/project/$P" | jq -r .status)
  if [ "$ST" = "draft" ]; then
    curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" -H "Content-Type: application/json" \
      -X PATCH --data '{"status":"processing"}' "$MR/project/$P" && echo "Modrinth $P submitted for review"
  fi
done
echo "Modrinth: done"
