#!/bin/bash


###############################################################################
function print1()
{
    arg1=$1
    echo "print1"
    for count in  `seq 1 $arg1` 
    do
        echo "$count"
    done
    return
}



###############################################################################
function print2()
{
    arg1=$1
    echo "print2"
    for (( count=0; count < $arg1; count++ ))
    do
        echo "$count"
    done
    return
}


###############################################################################
print1 5 
print2 5
exit 0
