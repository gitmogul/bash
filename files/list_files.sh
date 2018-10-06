#!/bin/bash


###############################################################################
function list_files()
{
    dir=$1

    files=`ls $dir`
    count = 0;
    for file in $files
    do
        count=$(($count+1))
        echo "$count: $file"
    done
    return
}


list_files /etc/
exit 0
