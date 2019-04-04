#!/bin/bash

sudo smartctl -t short /dev/sda | grep "successful"
sudo smartctl -t short /dev/sdb | grep "successful"
sleep 130s

echo =========/dev/sda=========
sudo smartctl -a /dev/sda | grep "Raw_Read\|Power_On\|Power_Cycle\|Reallocated\|Media_Wearout\|CurrentPending\|Uncorrectable"
sudo smartctl -l selftest /dev/sda | grep "# 1"

echo
echo =========/dev/sdb=========
sudo smartctl -a /dev/sdb | grep "Raw_Read\|Power_On\|Power_Cycle\|Reallocated\|Media_Wearout\|CurrentPending\|Uncorrectable"
sudo smartctl -l selftest /dev/sdb | grep "# 1"
