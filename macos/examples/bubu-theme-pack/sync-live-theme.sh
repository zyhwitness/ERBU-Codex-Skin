#!/bin/bash

set -euo pipefail

THEME_ID="custom-bubu-theme"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd -P)"
STATE_ROOT="$HOME/Library/Application Support/CodexDreamSkinStudio"
LIVE_THEME_DIR="$STATE_ROOT/theme"
LIBRARY_THEME_DIR="$STATE_ROOT/themes/$THEME_ID"
APPLY_NOW="false"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --apply) APPLY_NOW="true"; shift ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

mkdir -p "$LIVE_THEME_DIR" "$LIBRARY_THEME_DIR"

/usr/bin/rsync -a --delete \
  --exclude 'README.md' \
  --exclude 'sync-live-theme.sh' \
  "$SOURCE_DIR/" "$LIBRARY_THEME_DIR/"

/usr/bin/rsync -a --delete \
  --exclude 'README.md' \
  --exclude 'sync-live-theme.sh' \
  "$SOURCE_DIR/" "$LIVE_THEME_DIR/"

printf 'Synced %s to:\n' "$THEME_ID"
printf '  %s\n' "$LIBRARY_THEME_DIR"
printf '  %s\n' "$LIVE_THEME_DIR"

if [ "$APPLY_NOW" = "true" ]; then
  exec "$HOME/.codex/codex-dream-skin-studio/scripts/switch-theme-macos.sh" --id "$THEME_ID"
fi
