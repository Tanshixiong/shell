#!/usr/bin/env bash

#选项和参数分离
#tan-tsx@ubuntu:~/shell$ ./shift_2.sh -a -b -c -- test1 test2 test3
#        Found the -a option
#        Founde the -b option
#        Founde the -c option
#        Parameter #1: test1
#        Parameter #2: test2
#        Parameter #3: test3



while [ -n X$1 ]
do
    case "$1" in
    -a) echo "Found the -a option";;
    -b) echo "Founde the -b option";;
    -c) echo "Founde the -c option";;
    --) shift
        break ;;
    *) echo "$1 is not option" ;;
    esac
    shift
done

count=1
for param in $@
do
    echo "Parameter #$count: $param"
    count=$[ $count + 1 ];
done
