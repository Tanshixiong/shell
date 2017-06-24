#!/usr/bin/env bash
# 生成任意IP

#方法一
function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(date +%s%N)
    echo $(($num%$max+$min))
}

rnd=$(rand 1 255)
echo $rnd

# 方法二
function random_range() {
    local beg=$1
    local end=$2
    echo $((RANDOM % ($end - $beg) + $beg))
}

random_range 1 255


i=1
res=$(random_range 1 255)
end=${res}
while (( $i < 4 ))
do
    end=${end}.$(random_range 1 255)
    let "i++"
done
echo ${end}

exit 0
