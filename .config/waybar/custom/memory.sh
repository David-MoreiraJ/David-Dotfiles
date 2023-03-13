#!/bin/bash

while :
do
    memUsage=$(free -m | awk '/Mem/{print $3}')

    echo "$memUsage MB"

    sleep 2
done
