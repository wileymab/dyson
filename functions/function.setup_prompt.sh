function setup_prompt {
    source $scriptDir/function.parse_git_branch.sh
	source $scriptDir/function.parse_git_dirty.sh
    source $scriptDir/function.parse_zone.sh
	source $(which shml)
	dir="$(fgcolor lightgray)$(echo "$PWD")$(fgcolor end)"
	export PS1="${dir}$(fgcolor cyan)\`parse_git_branch\`$(fgcolor end)\n\`parse_zone\`$(fgcolor lightmagenta)>$(fgcolor end) "
}
setup_prompt
unset -f setup_prompt