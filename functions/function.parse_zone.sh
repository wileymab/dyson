function parse_zone {
    source $(which shml)
    if [ -n "$ZONE" ]
    then
        echo "$(fgcolor gray)[$ZONE]$(fgcolor lightgray) "
    else
        echo ""
    fi
}