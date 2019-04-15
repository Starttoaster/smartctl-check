#!/bin/sh

DATE=$(date +"%Y%m%d")
SEC=125
./runtest.sh > $DATE.log
while [[ $SEC -gt 0 ]];do
        echo -ne "Sit back..This will take about two minutes to complete.\n$SEC\n"
        sleep 1
        : $((SEC--))
        clear
done
./smart.sh >> $DATE.log
echo This script has completed. View log file named $DATE.log
