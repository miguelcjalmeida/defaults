settingsPath="$DEFAULTS_PREFERENCES/vscode/settings.json"
extensionsPath="$DEFAULTS_PREFERENCES/vscode/extensions"

scoopApp=$(double-escape-path "$DEFAULTS_SCOOP_APP")

settings=`cat "$settingsPath"`
settings=${settings/\$DEFAULTS_SCOOP_APP/$scoopApp}

echo -e "$settings"
echo -e "$settings" > "$APPDATA/Code/User/settings.json" 

mkdir -p "$DEFAULTS_HOME/.vscode" 
cp -r -n "$extensionsPath" "$DEFAULTS_HOME/.vscode" 
