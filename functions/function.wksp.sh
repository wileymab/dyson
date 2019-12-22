# an alias for "desk go ..." with accompanying completion function
function wksp {
    source $(which shml)
	if [ -z "$DESK_NAME" ]
	then
       desk go "$1"
	else
        if [ "$DESK_NAME" = "$1" ]
        then
            echo "You are currently in $(fgcolor red)$(attribute bold "$DESK_NAME")$(fgcolor end)."
        else
		    echo "You are currently in $(fgcolor red)$(attribute bold "$DESK_NAME")$(fgcolor end). Please exit this workspace before loading another."
        fi
	fi
}

# wksp completion function
function _wksp {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $( compgen -W "$( ls ~/.desk/desks | sed s,\.sh,, )" -- $cur ) )
}

complete -F _wksp wksp
