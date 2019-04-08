# smartctl-check
Quickly queries smartctl for relevant important and pre-failure drive health indicators as well as runs a short self test. 

# Installation

Clone this repo somewhere on your server: `git clone https://github.com/Starttoaster/smartctl-check.git`

Change to the repo directory and run: `sudo chmod +x parent.sh runtest.sh smart.sh`

Finally, get your results with: `./parent.sh`

For an explanation of what's happening: `parent.sh` orchestrates the other two scripts such that it starts the `runtest.sh` script, outputs a friendly countdown to update you on how much longer it is going to take to get you the self-test results, and then grabs the results for you in `smart.sh`. Finally, `parent.sh` wraps it all up in a nice timestamped `.log` file for your viewing pleasure. You can easily alter the parent script with a new location to save these log files if so desired by adding a directory in front of the log file on lines 4 and 11.

**NOTE: Requires smartmontools package be installed!**
