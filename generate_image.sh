#!/usr/bin/env bash
set -euxo pipefail

rm -f ./*.png
for i in *.svg; do
  inkscape "$i" --export-filename="${i%.svg}.png"
done
