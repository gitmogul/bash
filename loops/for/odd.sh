#!/bin/bash

###############################################################################
function print_odd()
{
    arg1=$1
    echo "print odd numbers between 0-$arg1"
    for (( count=0; count < $arg1; count++ ))
    do
        if [ $(($count % 2)) -eq 0 ];
        then
            continue 
        fi;
        echo "$count"
    done
    return
}

###############################################################################
# print odd numbers between 0 and 10

if [ "$#" -eq 0 ];
then
    print_odd "10"
    exit 0
else
    if [ $1 -eq $1 2> /dev/null ];
    then 
        if [ $1 -gt 0 ]; then 
            print_odd "$1"
            exit 0
        fi
    fi
    echo "Please provide a postive number!"
fi
exit -1
