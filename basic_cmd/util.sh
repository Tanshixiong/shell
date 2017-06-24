#!/usr/bin/env bash
#using the until command

var1=100

util [ ${var1} -eq 0 ]
do
    echo ${var1}
    var1=$(($var1-25))
done
