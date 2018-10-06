#!/bin/bash

###############################################################################
function print_even()
{
    arg1=$1
    arg2=$2

    echo "print_even"
    for (( count=0; count < $arg2; count++ ))
    do
        if [ $(($count % 2)) -eq 0 ];
        then
            echo "$arg1 $count"
        fi;
    done
    return
}

###############################################################################
function print_odd()
{
    arg1=$1
    arg2=$2

    echo "print_odd"
    for (( count=0; count < $arg2; count++ ))
    do
        if [ $(($count % 2)) -eq 0 ];
        then
            continue 
        fi;
        echo "$arg1 $count"
    done
    return
}

###############################################################################
function print_all()
{
    arg1=$1
    arg2=$2

    echo "print_all"
    for count in  `seq 1 $arg2` 
    do
        echo "$arg1 $count"
    done
    return
}



###############################################################################
function print_max()
{
    arg1=$1
    arg2=$2

    echo "print_max"
    for (( count=0; count < $arg2; count++ ))
    do
        if [ $(($count)) -gt 10 ];
        then
            break
        fi;
        echo "$arg1 $count"
    done
    return
}


###############################################################################
print_even "Hello World" "10"
print_odd "Hello World" "10"
print_max "Hello World" 100 
print_all "Hello World" 25
exit 0
