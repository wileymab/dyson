function fullpath {
    dir=$(dirname "${1}")
    base=$(basename "${1}")
    better_path="${dir}/${base}"

    resolve_dir() {
        back=`pwd`
        cd "${1}"
        pwd
        cd "$back"
    }

    if [[ -e "${better_path}" ]]; then
        # echo "${better_path} exists"
        if [[ -f "${better_path}" ]]; then
            # echo "${better_path} is a file"
            clean_dir=$(resolve_dir ${dir})
            echo "${clean_dir}/${base}"
        elif [[ -d "${better_path}" ]]; then
            # echo "${better_path} is a directory"
            clean_dir=$(resolve_dir ${better_path})
            echo "${clean_dir}" 
        fi
    else 
        echo "${1} not found." > /dev/stderr 
    fi

}

