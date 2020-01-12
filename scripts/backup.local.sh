#!/usr/bin/env bash

function backup {
    local back=$(pwd)
    local jd_path=~/Projects/junkdrawer
    local backup_name="local.${1}.zip"
    local backup_file="${jd_path}/${backup_name}"

    zip -r "${backup_file}" ~/.dyson/.local
    
    cd ${jd_path}
    git add ${backup_file}
    git commit -m "Backup for ${backup_name}"
    git push origin master
    
    cd ${back}
}

if [[ -n "${1}" ]]; then
    backup $@
    exit
else
    echo "No backup name provided."
fi