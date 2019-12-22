
function decode_jwt {
    let count=0
    decodeJwtJson="{"
    for section in $(cat "${1}" | tr "." "\n"); do 
        result=""
        if [[ "${section:0:2}" == "ey" ]]; then
            result="$(echo "${section}" | base64 -D)"
            if [[ ! "${result}" =~ \}$ ]]; then
                result="${result}}"
            fi
        else
            result="\"${section}\""
        fi
        decodeJwtJson="${decodeJwtJson}\"${count}\": ${result},"
        let count=count+1        
    done
    decodeJwtJson="${decodeJwtJson}}"
    echo $decodeJwtJson | sed s^\,\}^}^g
}