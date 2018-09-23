#!/bin/bash

###############################################################################
function pass_by_reference()
{
    local return_value1=$1
    local return_value2=$2

    local num1=10
    local num2=20

    eval $return_value1="'$num1'"
    eval $return_value2="'$num2'"
}

###############################################################################
function pass_by_value()
{
    local result=$(($1+$2))
    echo "$result"
}

val1=1
val2=2
echo "Before pass_by_reference values: $val1, $val2"
pass_by_reference val1 val2
echo "After pass_by_reference values: $val1, $val2"

val1=1
val2=2
echo "Before pass_by_value value: $val1, $val2"
return_val=$(pass_by_value arg1 arg2)
echo "After pass_by_value value: $val1, $val2"

exit 0
