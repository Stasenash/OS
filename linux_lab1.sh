if [[ "" = "$1" || "" = "$2" ]]; then
    echo Parameter not found.
else
    if [[ -f $1 ]];then
        chmod $2 $1
    else
        echo File not found
    fi
fi
