#!/usr/bin/bash
 
# Script:                       Ops 301 Class 05 Ops Challenge: Append; Date and Time
# Author:                       Zachary Derrick
# Date of latest revision:      8/30/2022
# Purpose:                      Write a script that uses /dev/null to wipe information
#                               Copies /var/log/syslog to the current working directory and
#                               appends the current date and time to the filename
 
# main
# creates the variable date to be appended later with ISO 8601 format
date=$(date +"-%Y-%m-%dT%H:%M:%S%z")
# copies the syslog file to the current directory w/ statement telling user of stage
echo `date` " Copying files to the current directory"
cp /var/log/syslog .
# renames the syslog file with the date appended w/ statement telling user of stage
# "-i" flag prompts confirmation before overwritting a file if one were to perform this task more than once
echo `date` " Adding date to syslog filename"
mv -i syslog syslog$date
# end
