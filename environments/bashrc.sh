
function globalSetup {
    local scriptDir=$(dirname ${BASH_SOURCE[0]})

    # TODO look into lumberjack (?) for shell logging mechanics
    export SHELL_UTILS_DEBUG=false

    # Environment
    source $scriptDir/../exports/bashrc.exports.sh
    source $scriptDir/../aliases/bashrc.aliases.sh
    source $scriptDir/../functions/bashrc.functions.sh
    
    if [[ -f "${scriptDir}/../.local/also.sh" ]]; then
        source ${scriptDir}/../.local/also.sh
    fi

}
globalSetup
unset -f globalSetup
