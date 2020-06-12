
function chksum {
    if [[ ! $(which openssl) ]]; then
        echo "openssl binary not found."
        echo "Please install an up-to-date version of openssl."
    else
        algorithm=${1}
        file=${2}
        expected_sum=${3}
        calculated_hash=$(openssl ${algorithm} ${file} | awk '{ print $2 }')
        if [[ ${calculated_hash} == ${expected_sum} ]]; then
            echo "PASSED ${calculated_hash}"
        else
            echo "FAILED calculated=${calculated_hash}, expected=${expected_sum}"
        fi
    fi
}
