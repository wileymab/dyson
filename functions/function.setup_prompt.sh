function setup_prompt {
    source $scriptDir/function.parse_directory.sh
    source $scriptDir/function.parse_git_branch.sh
	source $scriptDir/function.parse_git_dirty.sh
	source $(which shml)
	export PS1="\`parse_directory\`$(fgcolor cyan)\`parse_git_branch\`$(fgcolor end)\n$(fgcolor lightmagenta)>$(fgcolor end) "
}
setup_prompt
unset -f setup_prompt