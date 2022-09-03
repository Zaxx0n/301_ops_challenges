#!/usr/bin/bash
 
# Script:                       Ops 301 Class 05 Ops Challenge: Clearing Logs
# Author:                       Zachary Derrick
# Date of latest revision:      9/2/2022
# Purpose:                      Write a log clearing bash script
 
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
