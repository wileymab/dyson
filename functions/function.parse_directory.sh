function parse_directory {
    source $(which shml)
    if [ -n "$DESK_NAME" ]
    then
        local subDir=$(echo "$PWD" | sed s,"$DESK_ROOT",,g)
        echo "$(fgcolor gray)[$DESK_NAME]$(fgcolor lightgray)$subDir$(fgcolor end)"
    else
        echo "$(fgcolor lightgray)$(echo "$PWD")$(fgcolor end)"
    fi
}