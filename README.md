# smartctl-check
Quickly queries smartctl for relevant important and pre-failure drive health indicators as well as runs a short self test. 

**Requires smartmontools package be installed!**

Clone this script somewhere on your server. Then run `sudo chmod u+x smart.sh` while in the same directory as the script. This makes it runable

To run the script know the number of hard drives are installed in your system, type `./smart.sh [Number of drives]` and wait about two minutes for SMART short tests to complete and results to show up. Example for two drives (/dev/sda and /dev/sdb): `./smart.sh 2`


