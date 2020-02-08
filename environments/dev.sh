
function devSetup {
    local scriptDir=$(dirname ${BASH_SOURCE[0]})

    import() {
        # Will source or quietly fail to find the script.
        canonical_path=$(fullpath "${1}" 2>/dev/null)
        if [[ -e "${canonical_path}" ]]; then
            source "${canonical_path}"
        fi
    }

    # Environment
    import $scriptDir/../exports/dev.exports.sh
    import $scriptDir/../aliases/dev.aliases.sh
    import $scriptDir/../functions/dev.functions.sh

}
devSetup
unset -f devSetup
