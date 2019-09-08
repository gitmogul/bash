#!/bin/bash

function coins_list_space()
{
    local coins="nickel penny dime quarter dollar"

    echo "coins_list_space"
    for coin in $coins
    do
        echo $coin
    done
}


function coins_list_comma()
{
    defIFS=$IFS
    IFS=,
    local coins="nickel,penny,dime,quarter,dollar"

    echo "coins_list_comma"
    for coin in $coins
    do
        echo $coin
    done
    IFS=$defIFS
}

coins_list_comma
echo ""
coins_list_space
exit 0
