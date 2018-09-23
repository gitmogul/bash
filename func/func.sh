#!/bin/bash

###############################################################################
function pass_by_reference()
{
    # note after the assignment val1=value1
    # make sure local var name and global name are not the same!
    local val1=$1
    local val2=$2

    local num1=10
    local num2=20

    eval $val1="$num1"
    eval $val2="$num2"
}

###############################################################################
function pass_by_value()
{
    local result=$(($1+$2))
    echo "$result"
}

value1=1
value2=2
echo "Before pass_by_reference values: $value1, $value2"
pass_by_reference value1 value2
echo "After pass_by_reference values: $value1, $value2"

val1=1
val2=2
echo "Before pass_by_value value: $val1, $val2"
return_val=$(pass_by_value arg1 arg2)
echo "After pass_by_value value: $val1, $val2"

exit 0
