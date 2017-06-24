#!/usr/bin/env bash

# 当输入的字符达到预设的字符数时，它会自动退出
cat - <<EOF
  当输入的字符达到预设的字符数时，它会自动退出
EOF

read -n1 -p "Do you want to continue[Y/N]" answser
case $answser in
    Y|y) echo
         echo "fine, continue on ..."
         ;;
    N|n) echo
        echo 'OK. goodbye'
        exit
        ;;
esac


# 隐藏式读取
cat - << EOF
    输入的密码不在终端显现
    For Example:
    输入的密码不在终端显现
Enter your password:
Is your password really tanshixiong

EOF

read -s -p "Enter your password:" pass
echo
echo "Is your password really $pass"
