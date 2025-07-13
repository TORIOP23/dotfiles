#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Target directory and file path
DEST_DIR="$HOME/.config/karabiner"
DEST_FILE="$DEST_DIR/karabiner.json"

# 1. Run yarn build
echo "🔧 Running yarn build..."
yarn build

# Check if the output file exists
if [ ! -f karabiner.json ]; then
  echo "❌ karabiner.json not found after build."
  exit 1
fi

# 2. Create the target directory if it doesn't exist
mkdir -p "$DEST_DIR"

# 3. Copy the file and overwrite if it already exists
echo "📂 Copying karabiner.json to $DEST_FILE..."
cp -f karabiner.json "$DEST_FILE"

echo "✅ Done."
