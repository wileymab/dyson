# git global author

function setup_author {
    current_user_info=$(git config --global --list | grep "user")
    # echo ${current_user_info}

    if [[ -n "${current_user_info}" ]]; then
        printf "Current author information:\n\n"
        printf "${current_user_info}\n\n"
        printf "Would you like to overwrite this information? (y/n): "
        read should_overwrite
        printf "\n"
    fi

    if [[ -z "${current_user_info}" || "${should_overwrite}" == "y" ]]; then
        printf "Setting up new git author information.\n"
        author_full_name="${1}"
        author_email="${2}"

        if [[ -z "${author_full_name}" ]]; then
            echo -n "Git Author Full Name: "
            read author_full_name
        fi

        if [[ -z "${author_email}" ]]; then
            echo -n "Git Author Email: "
            read author_email  
        fi

        git config --global user.name "${author_full_name}"
        git config --global user.email "${author_email}"

        printf "\nNew git author user information:\n\n"
        git config --global --list | grep "user"
        printf "\n\n"

    fi

}


function add_global_ignores {
    global_ignore=~/.gitignore_global
    ignore_list=(
        "*.lz"
        ".local"
    )

    printf "Looking for global ignore file at: ${global_ignore}"
    if [[ ! -e "${global_ignore}" ]]; then
        printf " ... file not found, attempting to create.\n"
        echo touch "${global_ignore}"
    else 
        printf " ... file found.\n"
    fi

    for entry in ${ignore_list[@]}; do
        esc_entry=$(printf "%q" "${entry}" | sed 's/\./\\./g')
        lookup_cmd="cat ${global_ignore} | grep -e \"${esc_entry}\""
        lookup=$(bash -c "${lookup_cmd}")
        # echo ${lookup_cmd}
        # echo ${lookup}
        if [[ -z "${lookup}" ]]; then
            echo "${entry}" >> "${global_ignore}"
            printf "${entry} .. ADDED\n"
        else
            printf "${entry} .. FOUND\n"
        fi
    done

    git config --global core.excludesfile "${global_ignore}"
}

function setup_git_aliases {
    git config --global alias.st    'status -s'
    git config --global alias.co    checkout
    git config --global alias.b     branch
    git config --global alias.br    'branch -r'
    git config --global alias.lo    'log --oneline'
}


setup_author "${1}" "${2}"
add_global_ignores
setup_git_aliases