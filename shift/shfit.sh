#!/usr/bin/env bash

#shift 命令，默认情况下它会将每个参数变量减一，所以，变量$3的值会移到$2,变量$2的值会一道$1,而变量$1的值
#会被删除（注意，变量$0的值，也就是程序名不会改变）
count=1
while [ -n "$1" ]
do
    echo "Parameter $count=$1"
    count=$[ $count +1 ]
    shift
done
