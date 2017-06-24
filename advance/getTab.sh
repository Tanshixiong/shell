#!/usr/bin/env bash

#Name	1st	2nd	3th
#V1	10	20	30
#V2	2	3	4
#V3	8	7	2

cat pay.txt | awk '{if (NR==1) printf "%10s %10d %10d %10d\n", $1,$2,$3,$4,"Total"} \
NR>=2{total = $2 + $3 + $4
printf "%10s %10d %10d %10d %10d\n", $1,$2,$3,$4,total}'


cat pay.txt | awk 'NR==1{printf "%10s %10d %10d %10d\n", $1,$2,$3,$4,"Total"} \
NR>=2{total = $2 + $3 + $4
printf "%10s %10d %10d %10d %10d\n", $1,$2,$3,$4,total}'