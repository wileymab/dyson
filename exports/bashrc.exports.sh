export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home
export HISTCONTROL=ignorespace
export PATH="$PATH:/Users/m441527/Library/Android/sdk/platform-tools"

# =============================================================================
#   Sets up the custom lua path
#
function setLuaPath {

    local lua_roots=(
        "."
        "/usr/local/share/lua/5.3"
        "/usr/local/lib/lua/5.3"
        "/Users/m441527/.luarocks/share/lua/5.3"
    )

    local full_lua_path=""
    for root in ${lua_roots[@]}; do
        full_lua_path="${full_lua_path}${root}/?.lua;"
        full_lua_path="${full_lua_path}${root}/?/init.lua;"
    done

    export LUA_PATH="${full_lua_path}"
    unset setLuaPath
}
setLuaPath
#
# -----------------------------------------------------------------------------
