#!/usr/bin/env bash

# 读文件
cat - <<EOF
    读文件
EOF
cat test | while read line
do
    echo "line $count: $line"
    count=$[ $count + 1 ]
done
echo "Finished process the file"