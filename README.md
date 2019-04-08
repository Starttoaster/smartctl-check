# smartctl-check
Quickly queries smartctl for relevant important and pre-failure drive health indicators as well as runs a short self test. 

**Requires smartmontools package be installed!**

Clone this script somewhere on your server. Then run `sudo chmod u+x smart.sh` while in the same directory as the script. This makes it runable

Run with `./smart.sh`

To get the output in a timestamped file, make the parent script run-able with `sudo chmod u+x parent.sh` and finally run with `.\parent.sh`
