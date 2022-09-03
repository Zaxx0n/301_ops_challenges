#!/usr/bin/bash

# Script:                       Ops 301 Class 05 Ops Challenge: Clearing Logs
# Author:                       Zachary Derrick
# Date of latest revision:      9/2/2022
# Purpose:                      Write a log clearing bash script

# Define Variables and Colors
BIRed='\033[1;91m'        # Red
NC='\033[0m'              # No Color
msg="Which log should be sent to the void?"

# Define Arrays
opt=("syslog"  "wtmp" "other" "exit")

# Define Functions

 clear_log() {
    cat $1
    cat /dev/null > $1
    cat $1
}

# main

refresh(){
    # \n allows for the message to be printed on a new line
    # the -e in echo allows echo to interpret the \n command
echo -e "\n$msg"
    # a for loop that is dynamic
for ((i = 0; i < ${#opt[@]}; i++))
do
        echo "$((i+1))) ${opt[$i]}"
done
}
echo $msg
select i in ${opt[@]}
do
        case $i in
                        ${opt[0]})
                                $clear_log > /var/log/syslog
                                refresh;;
                        ${opt[1]})
                                $clear_log > /var/log/wtmp
                                refresh;;
                        ${opt[2]})
                                echo "enter path of file to be wiped"
                                read void
                                $clear_log > $void
                                refresh;;
                        ${opt[3]})
                                echo "Beware, the void is ever present."
                                break;;
                        *)
                                echo -e ${BIRed}"That is not an option.${NC}"
                                refresh;;
        esac
done
# end of code
# this code borrows heavily from Freeman's code found on https://linuxsheet.com/answers/293340/
# IFS="" allows for spaces to be used in the array but not needed in this code
# IFS stops space as an element delimiter




# end