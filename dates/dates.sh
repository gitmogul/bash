#!/bin/bash

###############################################################################
function get_hour()
{
    local hour=`date +%H`
    echo "$hour"
}

###############################################################################
function get_min()
{
    local min=`date +%M`
    echo "$min"
}

###############################################################################
function get_sec()
{
    local sec=`date +%H`
    echo "$sec"
}

###############################################################################
function get_day()
{
    local day=`date +%d`
    echo "$day"
}

###############################################################################
function get_mon()
{
    local mon=`date +%m`
    echo "$mon"
}

###############################################################################
function get_year()
{
    # +y is yy and +Y is yyyy
    local year=`date +%Y`
    echo "$year"
}

###############################################################################
function get_month_of_year()
{
    local month=`date +%b`
    echo "$month"
}

###############################################################################
function get_day_of_week()
{
    local day=`date +%A`
    echo "$day"
}


###############################################################################
function print_date()
{
    local result=$(get_hour)
    echo "Hour: $result"
    result=$(get_min)
    echo "Min: $result"
    result=$(get_sec)
    echo "Sec: $result"

    result=$(get_day)
    echo "Day: $result"
    result=$(get_mon)
    echo "Mon: $result"
    result=$(get_year)
    echo "Year: $result"

    result=$(get_day_of_week)
    echo "Day: $result"
    result=$(get_month_of_year)
    echo "Mon: $result"

    return
}

print_date
exit 0
