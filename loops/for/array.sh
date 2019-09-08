#!/bin/bash

function coins1()
{
    declare -a coins=("nickel" "penny" "dime" "quarter" "dollar")

    echo "coins1"
    for coin in ${coins[@]}
    do
        echo $coin
    done
}


function coins2()
{
    declare -a coins=("nickel" "penny" "dime" "quarter" "dollar")
    
    echo "coins2"

    #change elements in array 
    coins[0]="Nickel"
    coins[1]="Penny"
    coins[2]="Dime"
    coins[3]="Quarter"
    coins[4]="Dollar"
    #append to array
    coins+=("Shilling" "Guinea" )

    #indexing using keys
    for key in ${!coins[@]}
    do
        echo "key,value: $key ${coins[$key]}"
    done

    #indexing using index
    for ((index=0; index < ${#coins[@]}; index++))
    do
        echo "index,value: $index, ${coins[$index]}"
    done

    #print entire array
    echo "${coins[*]}"
}



coins1
echo ""
coins2
exit 0
