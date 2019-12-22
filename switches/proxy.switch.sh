scriptDir=$(dirname ${BASH_SOURCE[0]})

function loadProxySettings {
  local proxySettings="$scriptDir/local/$1/proxy_settings.sh"
  if [ -e "$proxySettings" ]
  then
    if [ "$SHELL_UTILS_DEBUG" = "true" ]
    then
      echo "Loading proxy settings for '$1'."
    fi
    source "$proxySettings"
  else
    if [ "$SHELL_UTILS_DEBUG" = "true" ]
    then
      echo "No proxy settings found for '$1'."
    fi
  fi
}

function setupProxy {
  loadProxySettings "$(getSwitchName)"
}

function getSwitchName {
  source $scriptDir/../libs/dictionary.sh
  echo $(dictionary.get $scriptDir/../config.sh switch)
}

setupProxy

unset -f loadProxySettings
unset -f setupProxy

