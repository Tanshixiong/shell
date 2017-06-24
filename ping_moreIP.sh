#!/usr/bin/env bash

network="192.168.1"

for i in $(seq 1 100)
do
    ping -c 1 -w ${network} ${i} &> /dev/null && result=0 || result=1
    if [ "${result}" == 0 ]; then
        echo "Server $network.$i is UP."
    else
        echo "Server $network.$i is Down."
    fi
done

