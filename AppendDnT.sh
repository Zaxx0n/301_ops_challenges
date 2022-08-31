#!/usr/bin/bash

# Script:                       Ops 301 Class 02 Ops Challenge: Append; Date and Time
# Author:                       Zachary Derrick
# Date of latest revision:      8/30/2022
# Purpose:                      Write a script that:
#                               Copies /var/log/syslog to the current working directory and
#                               appends the current date and time to the filename

# main
# creates the variable date to be ammended later
date=$(date +"-%Y_%m_%d")
# copies the syslog file to the current directory w/ statement telling user of stage
echo `date` " Copying files to the current directory"
cp /var/log/syslog .
# renames the syslog file with the date ammended w/ statement telling user of stage
echo `date` " Adding date to syslog filename"
mv syslog syslog$date
# end