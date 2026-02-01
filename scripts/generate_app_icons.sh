#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
APPICON_DIR="$ROOT_DIR/SoundboardApp/Resources/Assets.xcassets/AppIcon.appiconset"
SOURCE_PNG="${1:-$APPICON_DIR/AppIcon-1024.png}"

if [[ ! -f "$SOURCE_PNG" ]]; then
  echo "Missing source icon: $SOURCE_PNG" >&2
  echo "Create a 1024x1024 PNG named AppIcon-1024.png in:" >&2
  echo "  $APPICON_DIR" >&2
  exit 1
fi

if ! command -v sips >/dev/null 2>&1; then
  echo "Missing required tool: sips (macOS)" >&2
  exit 1
fi

make_icon() {
  local px="$1"
  local out="$2"
  sips -z "$px" "$px" "$SOURCE_PNG" --out "$APPICON_DIR/$out" >/dev/null
}

make_icon 40  "icon_20@2x.png"
make_icon 60  "icon_20@3x.png"
make_icon 58  "icon_29@2x.png"
make_icon 87  "icon_29@3x.png"
make_icon 80  "icon_40@2x.png"
make_icon 120 "icon_40@3x.png"
make_icon 120 "icon_60@2x.png"
make_icon 180 "icon_60@3x.png"

cp -f "$SOURCE_PNG" "$APPICON_DIR/icon_1024.png"

echo "Wrote icons into: $APPICON_DIR"

