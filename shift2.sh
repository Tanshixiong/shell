#!/usr/bin/env bash

#./test.sh 1 2 3 4 5
echo "The original parameter: $*"
shift 2
echo "here's the new first parameter: $1"
