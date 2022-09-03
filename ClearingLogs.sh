#!/usr/bin/bash

# Script:                       Ops 301 Class 05 Ops Challenge: Clearing Logs
# Author:                       Zachary Derrick
# Date of latest revision:      9/2/2022
# Purpose:                      Write a log clearing bash script

# Define Variables and Colors
BIRed='\033[1;91m'        # Red
NC='\033[0m'              # No Color
Purp='\033[0;35m'
msg="Which log should be sent to the void?"

# Define Arrays
log=("syslog"  "wtmp" "other" "exit")

# Define Functions

 void_caller() {
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
for ((i = 0; i < ${#log[@]}; i++))
do
        echo "$((i+1))) ${log[$i]}"
done
}
echo $msg
select i in ${log[@]}
do
        case $i in
                        ${log[0]})
                                $void_caller > /var/log/syslog
                                refresh;;
                        ${log[1]})
                                $void_caller > /var/log/wtmp
                                refresh;;
                        ${log[2]})
                                echo -e "Enter path of file to be wiped:\n"
                                read void
                                $void_caller > $void
                                refresh;;
                        ${log[3]})
                                printf ${Purp}"Beware, the void is ever present.    ༼✧!✧༽${NC}\n"
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