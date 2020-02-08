function setupGlobalFunctions {
	scriptDir=$(dirname ${BASH_SOURCE[0]})
	functions=(
		"setup_prompt"
		"mkcd"
		"fullpath"
		"todo"
		"dyson_update"
		"track"
	)
	for func in ${functions[@]}; do
		source "${scriptDir}/function.${func}.sh"
	done
	unset -f setupGlobalFunctions
}
setupGlobalFunctions
