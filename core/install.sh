install-preferences() {
    source-preference "fonts/install.sh"    
    source-preference "jrnl/install.sh"    
    source-preference "windows-terminal/install.sh"  
    source-preference "vscode/install.sh"   
    source-preference "windows/timezone.sh"   
    inputrc=`cat $DEFAULTS_ROOT/.inputrc`
    save-rc ".inputrc" "$inputrc"
}

install-apps() {
    if [[ -z "$1" ]]; then
        echo "Parameter is missing: all/coding/personal"
        return 1
    fi

    fileSuffix="-$1"
    if [ "$1" == "all" ]; then
        fileSuffix=""
    fi

    source "$DEFAULTS_ROOT/apps/init$fileSuffix.sh"
}

save-config() {
    fileDir="$(dirname "$DEFAULTS_CONFIG/$1")"
    mkdir -p "$fileDir"
    echo "$2" > "$DEFAULTS_CONFIG/$1"
}

save-rc() {
    fileDir="$(dirname "$DEFAULTS_HOME/$1")"
    mkdir -p "$fileDir"
    echo "$2" > "$DEFAULTS_HOME/$1"
}