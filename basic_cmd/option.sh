#!/usr/bin/env bash

if [ $# -ne 2 ]
then
    echo "Useage:Please enter an argv:"
fi

while [ -n "$1" ]   #Todo： $1一定要加引号，切记
do
    case "$1" in
    -a) echo "Found the -a option";;
    -b) echo "Found the -b option";;
    -c) echo "Found the -c option";;
    *) echo "$1 is not an option";;
    esac
    shift
done