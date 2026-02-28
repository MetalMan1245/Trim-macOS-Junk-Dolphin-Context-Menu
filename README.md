# Trim macOS Junk Files

Removes leftover `._` AppleDouble files created by macOS on non-HFS volumes.

## Installation

1. Copy `trim-macos-junk.sh` to `~/.local/bin/`
2. Copy `trim-macos-junk.desktop` to `~/.local/share/kio/servicemenus/`
3. Make the desktop file executable:
   ```bash
   chmod +x "~/.local/share/kio/servicemenus/trim-macos-junk.desktop"
4. Make the script executable:
   ```bash
   chmod +x "~/.local/bin/trim-macos-junk.sh"
5. Right click a directory, and "Trim macOS ._ Junk Files" should now be an option.

Your support is appreciated: patreon.com/c/metalman1245

v1.0 Malachi Ayers
