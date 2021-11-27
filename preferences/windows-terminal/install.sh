settingsPath="$(dirname "${BASH_SOURCE[0]}")/settings.json"
targetPath="$APPDATA/../Local/Microsoft/Windows Terminal"

cp "$settingsPath" "$targetPath" 
