###############################################################################
# note only div() deals with floating point all others deal with integers 
#
#
###############################################################################

#!/bin/bash

###############################################################################
function add()
{
    local no1=$1
    local no2=$2

    local sum=$(($no1 + $no2))
    echo "$sum"
}

###############################################################################
function div()
{
    local no1=$1
    local no2=$2;

    local result=`bc <<< "scale=2; $no1/$no2"`
    echo "$result"
}

###############################################################################
function sub()
{
    local no1=$1
    local no2=$2;

    local result=$(($no1-$no2))
    echo "$result"
}

###############################################################################
function mul()
{
    local no1=$1
    local no2=$2;

    local result=$(($no1*$no2))
    echo "$result"
}

###############################################################################
function exp()
{
    local no1=$1
    local no2=$2;

    local result=$(($no1**$no2))
    echo "$result"
}

###############################################################################
function root()
{
    local no1=$1
    local no2=$2;

    local result=`bc -l <<< "e(l($no1)/$no2)"`
    echo "$result"
}


num1=5
num2=3

echo "The two numbers are $num1, $num2"

return=$(add $num1 $num2)
echo "add(): $return"

return=$(sub $num1 $num2)
echo "sub(): $return"

return=$(mul $num1 $num2)
echo "mul(): $return"

return=$(div $num1 $num2)
echo "div(): $return"

return=$(exp $num1 $num2)
echo "exp(): $return"

echo "cube root of 125 is: $(root 125 3)"


