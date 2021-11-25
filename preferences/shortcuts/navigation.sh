dev () {
    if [ -z "$1" ]; then
        cd "$DEFAULTS_DEV"
        return
    fi

    if cd "$DEFAULTS_DEV/$1" 2> "/dev/null"; then
        return
    fi

    cd "$DEFAULTS_DEV"
    if cd *$1* 2> "/dev/null"; then
        return
    fi

    find . -maxdepth 1 -type d -name "*$1*"
}