#!/bin/bash

################################################################################
function parse_file()
{
    local input_file=$1

    orig_ifs="$IFS"
    IFS=$'\n'
    name_list=(`cut -d "," -f 1 $input_file`)
    age_list=(`cut -d "," -f 2 $input_file`)
    street_list=(`cut -d "," -f 3 $input_file`)
    city_list=(`cut -d "," -f 4 $input_file`)
    state_list=(`cut -d "," -f 5 $input_file`)

    count=0
    for name in "${name_list[@]}";
    do  
        echo "Name: $name"
        echo "age: ${age_list[$count]}"
        echo "street: ${street_list[$count]}"
        echo "city: ${city_list[$count]}"
        echo "state: ${state_list[$count]}"
        echo ""

        count=$(($count+1))
    done
    
    IFS=$"$orig_ifs"
}

###############################################################################
parse_file records.txt
