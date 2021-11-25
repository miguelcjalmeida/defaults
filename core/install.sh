install-configs() {
    source-preference "fonts/install.sh"    
    source-preference "jrnl/install.sh"    
    source-preference "windows-terminal/install.sh"    
    inputrc=`cat $DEFAULTS_ROOT_PATH/.inputrc`
    save-rc ".inputrc" "$inputrc"
}

save-config() {
    fileDir="$(dirname "$1")"
    mkdir -p "$fileDir"
    echo "$2" > "$DEFAULTS_CONFIG/$1"
}

save-rc() {
    fileDir="$(dirname "$1")"
    mkdir -p "$fileDir"
    echo "$2" > "$DEFAULTS_HOME/$1"
}