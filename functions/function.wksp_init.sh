# an alias for "desk go ..." with accompanying completion function
function initwksp {
    source $(which shml)
    here=`pwd`
    curDir=`basename $here`

    echo "What is that name of the workspace? (${curDir})"
    read workspace_name

    if [ -z "${workspace_name}" ]; then
      workspace_name="$curDir"
    fi

    echo "Give a short description of the workspace."
    read workspace_desc

    echo "Workspace details:"
    echo "-----"
    echo "Name: ${workspace_name}"
    echo "Description: ${workspace_desc}"
    echo "Roor dir: ${here}"


    echo -n "Is this correct? [yes/no]"
    read confirm

    if [ "${confirm}" == "yes" ]; then
      sed "s@__NAME__@${workspace_name}@g; s@__DESC__@${workspace_desc}@g; s@__ROOT__@${here}@g" ~/.desk/desk.template.sh > .wksp
    fi
    
}
