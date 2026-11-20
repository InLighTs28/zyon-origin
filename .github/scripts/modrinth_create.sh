#!/usr/bin/env bash
# Creates the ZyoN Modrinth projects whose id is still empty in .github/publish.json (draft status),
# with description, icon and banner, then writes their ids back into publish.json.
set -euo pipefail
CFG=.github/publish.json
MR=https://api.modrinth.com/v2
UA="zyon-publisher/1.0 (GitHub Actions)"
SRC=https://github.com/InLighTs28/zyon-origin
BANNER=assets/curseforge_banner.gif
create() { # key slug title summary type client server categories_json additional_json body_file
  local key=$1 id
  id=$(jq -r ".modrinth.${key}_id // \"\"" $CFG)
  if [ -n "$id" ]; then echo "$key: already $id"; return; fi
  local data
  data=$(jq -n --arg slug "$2" --arg title "$3" --arg desc "$4" --arg pt "$5" --arg cs "$6" --arg ss "$7" \
    --argjson cat "$8" --argjson add "$9" --rawfile body "${10}" --arg src "$SRC" \
    '{slug: $slug, title: $title, description: $desc, project_type: $pt, client_side: $cs, server_side: $ss,
      categories: $cat, additional_categories: $add, body: $body, is_draft: true, initial_versions: [],
      license_id: "LicenseRef-All-Rights-Reserved", license_url: ($src + "/blob/main/LICENSE"),
      source_url: $src, issues_url: ($src + "/issues")}')
  id=$(curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" \
        --form-string "data=$data" -F "icon=@assets/curseforge_logo.gif;type=image/gif" "$MR/project" | jq -r .id)
  echo "$key: created $id"
  curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" -H "Content-Type: image/gif" \
    --data-binary "@$BANNER" "$MR/project/$id/gallery?ext=gif&featured=true&title=ZyoN" > /dev/null || echo "::warning::gallery upload failed for $key"
  tmp=$(mktemp); jq --arg id "$id" ".modrinth.${key}_id = \$id" $CFG > "$tmp" && mv "$tmp" $CFG
}
create datapack zyon-origin "ZyoN" \
  "Seal the living into one network: what hits one hits all. A control and support origin for Origins (NeoForge 1.21.1)." \
  mod optional required '["magic","adventure","game-mechanics"]' '[]' .github/modrinth/datapack.md
create resourcepack zyon-resources "ZyoN - Resources" \
  "The required visuals for the ZyoN origin: reticle HUD, seal rings, Link Emitter, sounds and EN/FR texts." \
  resourcepack required unsupported '["themed"]' '["gui","audio","models"]' .github/modrinth/resourcepack.md
create mod zyon-mod "ZyoN (Mod)" \
  "The ZyoN origin in one jar: a control and support network operator for Origins. Datapack and visuals included." \
  mod required required '["magic","adventure","game-mechanics"]' '[]' .github/modrinth/mod.md
cat $CFG
