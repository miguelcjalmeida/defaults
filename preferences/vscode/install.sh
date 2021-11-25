settingsPath="$(dirname "${BASH_SOURCE[0]}")/settings.json"
extensionsPath="$(dirname "${BASH_SOURCE[0]}")/extensions"

cp "$settingsPath" "$APPDATA/Code/User" 
mkdir -p "$DEFAULTS_HOME/.vscode" 
cp -r -n "$extensionsPath" "$DEFAULTS_HOME/.vscode" 

