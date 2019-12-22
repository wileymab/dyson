scriptDir=$(dirname ${BASH_SOURCE[0]})

function loadLocalFunctions {
  local localFunctions="$scriptDir/local/$1/functions_settings.sh"
  if [ -e "$localFunctions" ]
  then
    if [ "$SHELL_UTILS_DEBUG" = "true" ]
    then
      echo "Loading functions settings for '$1'."
    fi
    source "$localFunctions"
  else
    if [ "$SHELL_UTILS_DEBUG" = "true" ]
    then
      echo "No functions settings found for '$1'."
    fi
  fi
}

function setupLocalFunction {
  loadLocalFunctions "$(getSwitchName)"
}

function getSwitchName {
  source $scriptDir/../libs/dictionary.sh
  echo $(dictionary.get $scriptDir/../config.sh switch)
}

setupLocalFunction

unset -f loadLocalFunctions
unset -f setupLocalFunction

