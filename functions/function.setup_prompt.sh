function setup_prompt {
    source $scriptDir/function.parse_git_branch.sh
	source $scriptDir/function.parse_git_dirty.sh
    source $scriptDir/function.parse_zone.sh
	source $(which shml)
	export PS1="\n$(fgcolor lightgray)$(echo \`pwd\`)$(fgcolor end)$(fgcolor cyan)\`parse_git_branch\`$(fgcolor end)\n\`parse_zone\`$(fgcolor lightmagenta)>$(fgcolor end) "
}
setup_prompt
unset -f setup_prompt