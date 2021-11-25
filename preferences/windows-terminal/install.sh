settingsPath="$(dirname "${BASH_SOURCE[0]}")/settings.json"
find "$APPDATA/../Local/Packages" -maxdepth 1 -type d -name "*WindowsTerminal*" -exec cp "$settingsPath" '{}/LocalState' \;
