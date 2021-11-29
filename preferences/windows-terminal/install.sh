settingsPath="$(dirname "${BASH_SOURCE[0]}")/settings.json"

#install in scoop folder
targetPath="$APPDATA/../Local/Microsoft/Windows Terminal"
cp "$settingsPath" "$targetPath" 

#install in native folder
find "$APPDATA/../Local/Packages" -maxdepth 1 -type d -name "*WindowsTerminal*" -exec cp "$settingsPath" '{}/LocalState' \;