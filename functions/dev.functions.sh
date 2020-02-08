function setupDevFunctions {
	scriptDir=$(dirname ${BASH_SOURCE[0]})
	functions=(
		"decode_jwt"
		"git_save"
		"git_current_branch"
	)
	for func in ${functions[@]}; do
		source "${scriptDir}/function.${func}.sh"
	done

  unset -f setupDevFunctions
}
setupDevFunctions