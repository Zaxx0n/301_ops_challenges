#!/user/bin/bash

# Script: SuperFilePermissionsPlus
# Author: Zachary Derrick                    
# Date of latest revision:  8/10/22    
# Purpose: Create a bash script that alters file permissions of everything in a directory.

#main

#colors used in script
BIRed='\033[1;91m'        # Red
NC='\033[0m'              # No Color
IYellow='\033[0;93m'      # Yellow

#variables

#variable to create logfile later
log=log_file.txt

#asking the user for the file path and permission number
echo "Please enter the path to the directory you'd like to change file permissions."
read pathw
echo "Enter the permission number you'd like to give the files in $pathw."
read perm

#a case loop that verifies the path and that the user wishes to continue, this is something I put together in 201 and have been adapting
while true; do
   printf "${BIRed}This will change the permissions for the files in $pathw ${NC}\n" 
   read -p  "Do you wish to proceed? [y/n] " yn
    case $yn in
        [Yy]* ) echo -e "Here are the new file permissions for files in $pathw:" && find $pathw -type f -exec chmod $perm {} \;; break;;
        [Nn]* ) echo -e "No changes have been made."; exit;;
        * ) echo -e "${IYellow}What do you even mean by that?"${NC};;
    esac

done

# ls -l is getting piped to a while loop, read breaks the ls -l so that it only outputs one line at a time 
# then echo takes the input from ls -l, prints it to the screen with && sleep creating a delay
# Djavan sat down with me and we worked on this for about an hour.  He really encouraged me to keep trying.
ls -l $pathw | while read line; do echo $line && sleep 2; done
# create log file name or overrite if already present
printf "Log File - " > $log
 
# creates log file from ls -l
ls -l $pathw >> $log
#end
#used script from Tutorialkart.com as guidance for the log output