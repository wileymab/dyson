function parse_directory {
    source $(which shml)
    if [ -n "$ZONE" ]
    then
        local subDir=$(echo "$PWD" | sed s,"$ZONE_ROOT",,g)
        echo "$(fgcolor gray)[$ZONE]$(fgcolor lightgray)$subDir$(fgcolor end)"
    else
        echo "$(fgcolor lightgray)$(echo "$PWD")$(fgcolor end)"
    fi
}