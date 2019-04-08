#!/bin/bash
DATE=$(date +"%Y%m%d")
echo Sit back..This will take two minutes to complete.
./smart.sh > $DATE.log
echo This script has completed. View log file named $DATE.log
