function git-save {
    status=$(git status -s 2>&1)
    if [[ -n "${status}" ]]; then
        if [[ "${status}" =~ "fatal: not a git repo"  ]]; then
            echo "No git repo found. Are you in a git repo directory?"
        else 
            if [[ -z "${1}" ]]; then
                echo "Must provide a commit message."
            else
                printf "Saving working tree...\n"
                git add .
                printf "Changes staged.\n"
                git commit -m "${1}"
                printf "Changes committed.\n"
            fi
        fi
    fi
}