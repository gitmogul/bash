#!/bin/bash

###############################################################################
function print_even()
{
    arg1=$1
    arg2=$2

    echo "print_even"
    count=0
    while [ $(($count)) -le $arg2 ];
    do
        if [ $(($count % 2)) -eq 0 ];
        then
            echo "$arg1 $count"
        fi;
        count=$(($count+1))
    done
    return
}

###############################################################################
function print_odd()
{
    arg1=$1
    arg2=$2

    echo "print_odd"
    count=0
    while [ $(($count)) -le $arg2 ];
    do
        if [ $(($count % 2)) -eq 0 ];
        then
            count=$(($count+1))
            continue
        fi;
        echo "$arg1 $count"
        count=$(($count+1))
    done
    return
}

###############################################################################
function print_max()
{
    arg1=$1
    arg2=$2

    echo "print_max"
    count=0
    while [ $(($count)) -le $arg2 ];
    do
        if [ $(($count)) -gt 10 ];
        then
            break
        fi;
        echo "$arg1 $count"
        count=$(($count+1))
    done
    return
}


###############################################################################
print_even "Hello World" "10"
print_odd "Hello World" "10"
print_max "Hello World" 100 

exit 0
