scriptDir=$(dirname ${BASH_SOURCE[0]})

function loadExportsSettings {
  local exportsSettings="$scriptDir/local/$1/exports_settings.sh"
  if [ -e "$exportsSettings" ]
  then
    if [ "$SHELL_UTILS_DEBUG" = "true" ]
    then
      echo "Loading export settings for '$1'."
    fi
    source "$exportsSettings"
  else
    if [ "$SHELL_UTILS_DEBUG" = "true" ]
    then
      echo "No exports settings found for '$1'."
    fi
  fi
}

function setupExports {
  loadExportsSettings "$(getSwitchName)"
}

function getSwitchName {
  source $scriptDir/../libs/dictionary.sh
  echo $(dictionary.get $scriptDir/../config.sh switch)
}

setupExports

unset -f loadExportsSettings
unset -f setupExports

