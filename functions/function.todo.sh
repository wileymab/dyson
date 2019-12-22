# a todo comment finding function
function todo {
	source $(which shml)
    dir=""
    if [ -z "$1" ]
    then
        dir=$(pwd)
	else 
		dir="$1"
    fi
	if [ "$SHELL_UTILS_DEBUG" = "true" ]
    then
    	echo -n "$(bgcolor white)$(fgcolor black) Searching for TODOs in $(fgcolor end)$(bgcolor end)"
		echo "$(bgcolor red)$(fgcolor white) $(attribute bold "$dir") $(fgcolor end)$(bgcolor end)"
    fi
    egrep -nrI "# TODO[^\"\[]" "$dir" | grep "TODO .*$" --color=always
}