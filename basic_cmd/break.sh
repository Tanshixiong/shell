#!/usr/bin/env bash

for varl in 1 2 3 4 5 6 7 8 9 10
do
    if [ $varl -eq 5 ];then
        break
    fi
    echo "Iteration number: $varl"
done
echo "The for loop is completed!"