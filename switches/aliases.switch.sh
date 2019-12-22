scriptDir=$(dirname ${BASH_SOURCE[0]})

function loadAliasesSettings {
  local aliasesSettings="$scriptDir/local/$1/aliases_settings.sh"
  if [ -e "$aliasesSettings" ]
  then
    if [ "$SHELL_UTILS_DEBUG" = "true" ]
    then
      echo "Loading aliases settings for '$1'."
    fi
    source "$aliasesSettings"
  else
    if [ "$SHELL_UTILS_DEBUG" = "true" ]
    then
      echo "No aliases settings found for '$1'."
    fi
  fi
}

function setupAliases {
  loadAliasesSettings "$(getSwitchName)"
}

function getSwitchName {
  source $scriptDir/../libs/dictionary.sh
  echo $(dictionary.get $scriptDir/../config.sh switch)
}

setupAliases

unset -f loadAliasesSettings
unset -f setupAliases

