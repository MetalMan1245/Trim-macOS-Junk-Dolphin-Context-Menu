#!/bin/bash

deleted=0

for TARGET in "$@"; do
    [[ -d "$TARGET" ]] || continue

    while IFS= read -r -d '' file; do
        base="$(basename "$file")"
        real="${base#._}"
        realpath="$(dirname "$file")/$real"

        if [[ -e "$realpath" ]]; then
            rm -f "$file"
            ((deleted++))
        fi
    done < <(find "$TARGET" -type f -name "._*" -print0)
done

notify-send "macOS Junk Trim" "Removed $deleted AppleDouble file(s)."
