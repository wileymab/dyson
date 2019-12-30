function dyson_update {
    back=$(pwd)
    cd ~/.dyson
    git pull origin master
    cd ${back}
}