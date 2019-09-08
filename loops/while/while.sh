#!/bin/bash


###############################################################################
function print()
{
    arg1=$1

    echo "print numbers 0-$arg1"
    count=0
    while [ $(($count)) -le $arg1 ];
    do
        echo "$count"
        count=$(($count+1))
    done
    return
}


###############################################################################
print 10
exit 0
