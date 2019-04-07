#!/bin/bash

#Starts self-test
ls /dev/sd* | sed 's/[0-9]//g' | sort -u | while read -r line; do
        sudo smartctl -t short $line | grep "successful";done
sleep 125s

#Shows S.M.A.R.T. attributes and test results.
ls /dev/sd* | sed 's/[0-9]//g' | sort -u | while read -r line; do
        echo ============= $line =============
        sudo smartctl -a $line | grep "Raw_Read\|Power_On\|Power_Cycle\|Reallocated\|Timeout\|Media_Wearout\|CurrentPending\|Uncorrectable"
        sudo smartctl -l selftest $line | grep "# 1";done
