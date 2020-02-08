
function devSetup {
    local scriptDir=$(dirname ${BASH_SOURCE[0]})

    # Environment
    source $scriptDir/../exports/dev.exports.sh
    source $scriptDir/../aliases/dev.aliases.sh
    source $scriptDir/../functions/dev.functions.sh

}
devSetup
unset -f devSetup
