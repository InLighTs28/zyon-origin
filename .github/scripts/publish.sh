#!/usr/bin/env bash
# ZyoN · uploads the release zips of $TAG to CurseForge and Modrinth. Skips a site whose token is missing.
set -euo pipefail
VER="${TAG#v}"
CFG=.github/publish.json
CL="changelogs/$VER"
DP="dist/$(jq -r .files.datapack $CFG)-$VER.zip"
RP="dist/$(jq -r .files.resourcepack $CFG)-$VER.zip"
UA="zyon-publisher/1.0 (GitHub Actions)"
for f in "$DP" "$RP" "$CL/datapack.md" "$CL/resourcepack.md"; do
  [ -f "$f" ] || { echo "::error::missing $f"; exit 1; }
done
RT=$(jq -r '.release_type // "release"' $CFG)   # release | beta | alpha
NAME_DP="$(jq -r .names.datapack $CFG) $VER"
NAME_RP="$(jq -r .names.resourcepack $CFG) $VER"

# ---------- CurseForge ----------
cf_upload() { # project_id file changelog display_name
  local meta
  meta=$(jq -n --rawfile cl "$3" --arg dn "$4" --arg rt "$RT" --argjson gv "$(jq -c .curseforge.game_version_ids $CFG)" \
    '{changelog: $cl, changelogType: "markdown", displayName: $dn, gameVersions: $gv, releaseType: $rt}')
  curl -sS --fail-with-body -A "$UA" -H "X-Api-Token: $CF_TOKEN" \
    --form-string "metadata=$meta" -F "file=@$2" \
    "https://minecraft.curseforge.com/api/projects/$1/upload-file"
  echo
}
CF_DP=$(jq -r .curseforge.datapack_id $CFG); CF_RP=$(jq -r .curseforge.resourcepack_id $CFG)
if [ -n "${CF_TOKEN:-}" ]; then
  if [ "$CF_DP" != "0" ]; then cf_upload "$CF_DP" "$DP" "$CL/datapack.md" "$NAME_DP"; else echo "::warning::CurseForge datapack id not set"; fi
  if [ "$CF_RP" != "0" ]; then cf_upload "$CF_RP" "$RP" "$CL/resourcepack.md" "$NAME_RP"; else echo "::warning::CurseForge resource pack id not set"; fi
  echo "CurseForge: done"
else
  echo "::warning::CURSEFORGE_TOKEN not set, CurseForge skipped"
fi

# ---------- Modrinth ----------
if [ -z "${MR_TOKEN:-}" ]; then
  echo "::warning::MODRINTH_TOKEN not set, Modrinth skipped"; exit 0
fi
MR=https://api.modrinth.com/v2
MR_DP=$(jq -r .modrinth.datapack_id $CFG)
MR_RP=$(jq -r .modrinth.resourcepack_id $CFG)
# ids must be set explicitly in publish.json (no auto-detection: it could pick another project)
if [ -z "$MR_DP" ] && [ -z "$MR_RP" ]; then echo "::warning::Modrinth ids not set, Modrinth skipped"; exit 0; fi
mr_upload() { # project_id file changelog name loaders_json deps_json
  local data
  data=$(jq -n --rawfile cl "$3" --arg n "$4" --arg rt "$RT" --arg v "$VER" --arg p "$1" --arg gv "$(jq -r .game_version $CFG)" \
    --argjson l "$5" --argjson d "$6" \
    '{name: $n, version_number: $v, changelog: $cl, dependencies: $d, game_versions: [$gv], version_type: $rt,
      loaders: $l, featured: true, project_id: $p, file_parts: ["file"], primary_file: "file"}')
  curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" \
    --form-string "data=$data" -F "file=@$2;type=application/zip" "$MR/version" | jq -r '"Modrinth version " + .id'
}
DEPS='[]'
[ -n "$MR_RP" ] && DEPS=$(jq -n --arg p "$MR_RP" '[{project_id: $p, dependency_type: "required"}]')
[ -n "$MR_DP" ] && mr_upload "$MR_DP" "$DP" "$CL/datapack.md" "$NAME_DP" '["datapack"]' "$DEPS"
[ -n "$MR_RP" ] && mr_upload "$MR_RP" "$RP" "$CL/resourcepack.md" "$NAME_RP" '["minecraft"]' '[]'
echo "Modrinth: done"
