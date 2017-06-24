#!/usr/bin/env bash

for test in I don't know how if this'll work
do
    echo "Word:$test"
done

for test in I don\'t know if "this'll" work
do
    echo "Word:$test"
done

for test in nevada "new hampshire" "New Mexico" "New York"
do
    echo "Now going to $test"
done

file="a.txt"

for state in `cat $file`
do
    echo "Visit beautiful $state"
done

for (( i=1; i <= 10; i++ ))
do
    echo "The next number is $i"
done

