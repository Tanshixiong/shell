#!/usr/bin/env bash

cat - << EOF
    tan-tsx@ubuntu:~/shell$ ./read.sh
    enter your name:tan
    Hello tan. welcome to my program
    Please enter you name:20
    That make you over 7300 days olds!
EOF

echo -n "enter your name:"
read name
echo "Hello $name. welcome to my program"

read -p "Please enter you age:" age
days=$(($age * 365))
echo "That make you over ${days} days olds!"

cat - << EOF
    Enter your name: tan shixiong
    checking data for shixiong, tan
EOF
read -p "Enter your name: " first last
echo "checking data for" $last, $first

# read 命令会将它收到的任何数据都放进特殊环境变量REPLY中：
cat - << EOF
    read 命令会将它收到的任何数据都放进特殊环境变量REPLY中：
EOF

read -p "Enter a number:"
factorial=1
for (( count=1; count <= $REPLY; count++ ))
do
   factorial=$[ $factorial * $count ]
done
echo "The factorial of $REPLY is $factorial"

#超时
cat - << EOF
    超时
EOF

if read -t 5 -p "Please enter your name: " name
then
    echo "Hello $name, welcom to my script"
else
    echo
    echo "Sorry. too slow!"
fi

