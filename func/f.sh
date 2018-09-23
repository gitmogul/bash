#!/bin/bash

###############################################################################
function func_ret_num()
{
    echo "$@"
    local result="100"
    return $result
}

echo "$@"
result=func_ret_num "sasaa" "sasasa" 
echo "function return value $?"

exit 0
