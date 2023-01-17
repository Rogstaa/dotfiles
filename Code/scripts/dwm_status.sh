#!/bin/bash

while true; do
    RAM=$(free -m | awk '/^Mem:/{print $3}')
    CPU=$(top -bn1 | awk '/^%Cpu/{print $2}')
    DATE=$(date +"%d-%b")
    TIME=$(date +"%R")

    xsetroot -name "  RAM: $RAM MB | CPU: $CPU% | $DATE $TIME  "
    sleep 5
done
