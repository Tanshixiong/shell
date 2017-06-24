#!/usr/bin/env bash

value=1
if [ -z $1 ];then
    echo "Useage: Please enter an argv"
    exit -1
fi

for (( number=1; number <= $1; number++ ))
do
    value=$[ $value *number ]
done

echo "The factorial of $1 is $value"
