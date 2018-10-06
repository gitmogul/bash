#!/bin/bash


###############################################################################
function file_exists()
{
    file=$1
    if [ -f $file ];
    then
        echo "File $file exists!"
        file_found=1
    else
        echo "File $file does not exist!"
    fi
}

###############################################################################
function dir_exists()
{
    dir=$1
    if [ -d $dir ];
    then
        echo "Dir $dir exists!"
    else
        echo "Dir $dir does not exist!"
    fi
}

###############################################################################
function obj_exists()
{
    #-e filename - Check for file existence, regardless of type (node, directory, socket, etc.)
    obj=$1
    if [ -e $obj ];
    then
        echo "object $obj exists!"
    else
        echo "object $obj does not exist!"
    fi
}

###############################################################################
function is_file_empty()
{
    file=$1

    if [ -f $file ];
    then
        if [ -s $file ];
        then
            echo "File is not empty!"
        else
            echo "File is empty!"
        fi
    else
        echo "File $file not found"
    fi

}

file_exists /etc/passwd
dir_exists /etc/
dir_exists /bin
dir_exists /etcc/
is_file_empty /etc/passwd
is_file_empty /etc/wvdial.conf
exit 0
