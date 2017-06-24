#!/usr/bin/env bash
# 检查文件日期
# -nt 比较判定某个文件是否比另一个文件更新，
# -ot 比较判定某个文件是否比另一个文件更老.

# testing file dates

if [ ./a.txt -nt ./b.txt ]
then
    echo "The a.txt is newer than b.txt"
else
    echo "The b.txt is newer than a.txt"
fi
if [ ./c.txt -ot ./d.txt ]
then
    echo "The c.txt is older than d.txt"
else
    echo "The d.txt is older than c.txt"
fi
