function track {
    START=$(date +%s)
    $*
    EXIT_CODE=$?
    END=$(date +%s)
    DIFF=$(echo "$END - $START" | bc)
    RES=$(python -c "diff = ${DIFF}; min = int(diff / 60); sec = int(diff % 60); hrs = int(min / 60); print('{:02d}:{:02d}:{:02d} (H:M:S)'.format(hrs,min,sec))")
    result="$1 completed in $RES, exit code $EXIT_CODE."
    echo ${result}
}