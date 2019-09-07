#!/bin/bash


list=`ls -a  ~`
for item in $list
do
    if [ -d $item ]; then
        echo "$item: is a directory"
    else
        echo "$item: is a file"
    fi
done
