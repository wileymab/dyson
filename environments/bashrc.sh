
function globalSetup {
    local scriptDir=$(dirname ${BASH_SOURCE[0]})

    # TODO look into lumberjack (?) for shell logging mechanics
    export SHELL_UTILS_DEBUG=false

    # Environment
    source $scriptDir/../exports/bashrc.exports.sh
    source $scriptDir/../aliases/bashrc.aliases.sh
    source $scriptDir/../aliases/docker.aliases.sh
    source $scriptDir/../functions/bashrc.functions.sh

    # Switches
    source $scriptDir/../switches/exports.switch.sh
    source $scriptDir/../switches/aliases.switch.sh
    source $scriptDir/../switches/functions.switch.sh
    source $scriptDir/../switches/proxy.switch.sh
}
globalSetup
unset -f globalSetup
