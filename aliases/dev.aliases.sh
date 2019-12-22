scriptDir=$(dirname ${BASH_SOURCE[0]})


# git
alias glo='git log --oneline' # Compact git log listing in git repos

# docker
if [ ! -z "$(which docker)" ]; then
    source ${scriptDir}/docker.aliases.sh
fi
