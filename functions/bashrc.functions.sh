function setupGlobalFunctions {
	scriptDir=$(dirname ${BASH_SOURCE[0]})
	source $scriptDir/function.setup_prompt.sh
	source $scriptDir/function.mkcd.sh
	source $scriptDir/function.todo.sh
	source $scriptDir/function.fullpath.sh
	unset -f setupGlobalFunctions
}
setupGlobalFunctions
