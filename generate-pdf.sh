#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
HTML="$ROOT/resume.html"
PDF="$ROOT/Nainar_Mohamed_Resume.pdf"

if [[ ! -f "$ROOT/assets/profile-photo.png" && ! -f "$ROOT/assets/profile-photo.jpg" ]]; then
  echo "Missing assets/profile-photo.png (or .jpg). Add your headshot, then re-run." >&2
  exit 1
fi

# Prefer jpg in HTML if provided
if [[ -f "$ROOT/assets/profile-photo.jpg" ]]; then
  sed -i 's|assets/profile-photo\.png|assets/profile-photo.jpg|g' "$HTML"
fi

TMPDIR="$(mktemp -d)"
cleanup() { rm -rf "$TMPDIR"; }
trap cleanup EXIT

google-chrome \
  --headless=new \
  --disable-gpu \
  --no-sandbox \
  --user-data-dir="$TMPDIR" \
  --no-pdf-header-footer \
  --print-to-pdf="$PDF" \
  "file://$HTML"

echo "Wrote $PDF"
ls -lh "$PDF"
