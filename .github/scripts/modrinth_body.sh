#!/usr/bin/env bash
# Syncs the Modrinth descriptions from .github/modrinth/*.md. Images are re-hosted on Modrinth (gallery, cdn.modrinth.com):
# external hosts such as jsDelivr are not shown in Modrinth descriptions.
set -euo pipefail
CFG=.github/publish.json
MR=https://api.modrinth.com/v2
UA="zyon-publisher/1.0 (GitHub Actions)"
EXT='https://cdn.jsdelivr.net/gh/InLighTs28/zyon-origin@main/assets/curseforge_banner.gif'
sync() { # key body_file
  local id; id=$(jq -r ".modrinth.${1}_id // \"\"" $CFG); [ -n "$id" ] || return 0
  local proj url
  proj=$(curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/project/$id")
  url=$(echo "$proj" | jq -r '[.gallery[] | select(.title == "ZyoN")][0].url // empty')
  if [ -z "$url" ]; then
    curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" -H "Content-Type: image/gif" \
      --data-binary @assets/curseforge_banner.gif "$MR/project/$id/gallery?ext=gif&featured=true&title=ZyoN" > /dev/null
    proj=$(curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" "$MR/project/$id")
    url=$(echo "$proj" | jq -r '[.gallery[] | select(.title == "ZyoN")][0].url')
  fi
  echo "$1: banner $url"
  local body; body=$(sed "s#$EXT#$url#g" "$2")
  jq -n --arg b "$body" '{body: $b}' | curl -sS --fail-with-body -A "$UA" -H "Authorization: $MR_TOKEN" \
    -H "Content-Type: application/json" -X PATCH --data @- "$MR/project/$id" && echo "$1: description updated"
}
sync datapack .github/modrinth/datapack.md
sync resourcepack .github/modrinth/resourcepack.md
sync mod .github/modrinth/mod.md
