#!/bin/bash

###############################################################################
function print_even()
{
    arg1=$1

    echo "print even numbers between 0-$arg1"
    count=0
    while [ $(($count)) -le $arg1 ];
    do
        if [ $(($count % 2)) -eq 0 ];
        then
            echo "$count"
        fi;
        count=$(($count+1))
    done
    return
}

###############################################################################
# print even numbers between 0 and 10

if [ "$#" -eq 0 ];
then
    print_even "10"
    exit 0
else
    if [ $1 -eq $1 2> /dev/null ];
    then 
        if [ $1 -gt 0 ]; then 
            print_even "$1"
            exit 0
        fi
    fi
    echo "Please provide a postive number!"
fi
exit -1
