#!/user/bin/bash

# Script: FilePermissions
# Author: Zachary Derrick                    
# Date of latest revision:  8/10/22    
# Purpose: Create a bash script that alters file permissions of everything in a directory.

#main
echo "Please enter the path to the directory you'd like to change file permissions for."
read pathw
echo "Enter the permission number you'd like to give this path."
read perm
find $pathw -type f -exec chmod $perm {} \;
echo "Here are the new file permissions for the specified path:"
ls -l $pathw 