# smartctl-check
Quickly queries smartctl for relevant drive health indicators as well as runs a short self test. 

**Requires smartmontools package be installed!**

Clone this script somewhere on your server. Then run `sudo chmod u+x smart.sh` while in the same directory as the script. This makes it runable

To run the script, type `./smart.sh` and wait 130 seconds for SMART short tests to complete and results to show up.

This script currently tests two drives. /dev/sda and /dev/sdb. Making it work for 3 or more is pretty trivial and only requires copying some lines.


