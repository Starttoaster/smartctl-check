#!/bin/bash

#Starts self-test
smartctl --scan | cut -f1 -d" " | while read -r line; do
        sudo smartctl -q silent -t short "$line";done
