function dyson_update {
    dyson_home=~/.dyson
    back=$(pwd)
    if [[ -d "${dyson_home}" ]]; then
        cd ${dyson_home}
        git co  -- . && git pull origin master
        # no-op change
        cd ${back}
    else
        echo "Dyson does not appear to be installed."
    fi
}
