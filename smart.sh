#!/bin/bash

NUMBER_DRIVES=$1
END=1

for LETTER in {a..z}; do
        if [[ $END -le $NUMBER_DRIVES ]]; then
                sudo smartctl -t short /dev/sd$LETTER | grep "successful"
                ((END++))
        fi
done

sleep 125s
END=1
for LETTER in {a..z}; do
        if [[ $END -le $NUMBER_DRIVES ]]; then
                echo ============= /dev/sd$LETTER =============
                sudo smartctl -a /dev/sd$LETTER | grep "Raw_Read\|Power_On\|Power_Cycle\|Reallocated\|Timeout\|Media_Wearout\|Cur$
                sudo smartctl -l selftest /dev/sd$LETTER | grep "# 1"
                ((END++))
        fi
done
