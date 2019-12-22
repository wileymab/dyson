
function installwksp {
    source $(which shml)
    
    wkspFile=$(ls -a1 | egrep "^.wksp$")
    # echo "$wkspFile"    

    if [ ! -z "$wkspFile" ]; then
        here=`pwd`
        curDir=`basename $here`
        # echo $curDir
        ln -f $wkspFile ~/.desk/desks/$curDir.sh 
        echo "Installed workspace as $curDir.sh."  
    fi
}
