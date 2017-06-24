#!/usr/bin/env bash

ifconfig  eth0 | grep 'inet addr' | sed 's/^.*addr://g' | sed 's/Bcast.*$//g'

