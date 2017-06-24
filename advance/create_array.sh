#!/usr/bin/env bash
#shell 数组测试
mytest=(one two three four five)

echo ${mytest}  # return one
echo ${mytest[2]}   # return three
echo ${mytest[*]}   # return one two three four five

