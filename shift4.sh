#!/usr/bin/env bash
# 处理带值的选项


#        tan-tsx@ubuntu:~/shell$ sh shift4.sh  -a -b test1 -d
#        Useage:Please enter an num:
#        Found the -a option
#        Found the -b option. with parameter value test1
#        -d is not the option


if [ $# -ne 2 ];then
    echo "Useage:Please enter an num:"
fi

while [ -n "$1" ]
do
    case "$1" in
    -a)
        echo "Found the -a option";;
    -b) param="$2"  #带值
        echo "Found the -b option. with parameter value $param"
        shift;;
    -c) echo "Found the -c option";;
    --)
        shift
        break ;;
    *)
        echo "$1 is not the option";;
    esac
    shift
done
