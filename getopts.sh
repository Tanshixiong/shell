#!/usr/bin/env bash
# getopts

#        tan-tsx@ubuntu:~/shell$ ./getopts.sh  -ab test1 -c -d
#        Unknow option a
#        Unknow option b
#        Unknow option c
#        Unknow option ?


if [ $# -lt 2 ];then
    echo "Useage:Please enter an num:"
fi


while getopts :ab:c opt
do
    case "$1" in
    a) echo "Found the -a option";;
    b) echo "Found the -b option. with value $OPTARG";;
    c) echo "Found the -c option";;
    *) echo "Unknow option $opt" ;;
    esac
done
