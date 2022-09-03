#!/usr/bin/bash

# Script:                       Ops 301 Class 05 Ops Challenge: Append; Date and Time
# Author:                       Zachary Derrick
# Date of latest revision:      8/30/2022
# Purpose:                      Write a script that uses /dev/null to wipe information
#                               Copies /var/log/syslog to the current working directory and
#                               appends the current date and time to the filename

# Define variables
syslongVar=/var/log/syslog
wtmpVar=/var/log/wtmp

# Define Function
 clear_log() {
    cat $1
    cat /dev/null > $1
    cat $1
}
# main
 
 clear_log $syslongVar
 clear_log $vtmpVar




# end