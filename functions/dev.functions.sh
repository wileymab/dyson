function setupDevFunctions {
	scriptDir=$(dirname ${BASH_SOURCE[0]})
	source $scriptDir/function.decode_jwt.sh
  unset -f setupDevFunctions
}
setupDevFunctions