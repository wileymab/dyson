function fullpath {
    back=`pwd`
    cd "${1}"
    pwd
    cd "$back"
}