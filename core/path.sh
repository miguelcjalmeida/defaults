escape-path () {
    path=$(cygpath -w "$1")
    echo "$path" | sed 's/\\/\\\\/g'
}

double-escape-path () {
    path=$(cygpath -w "$1")
    echo "$path" | sed 's/\\/\\\\\\\\/g'
}