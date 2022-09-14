#!/usr/bin/env python3
# Script: Ops 301 Class 11 Ops Python File Handling
# Author: Zachary Derrick                    
# Date of latest revision:  9/13/22    
# Purpose:Using file handling commands, create a Python script that creates a new .txt file, 
# appends three lines, prints to the screen the first line, then deletes the .txt file.

# Modules 
import os

# Main 
supersecretfile = open("topsecret.txt", "w")
password = ["What's the password? \n" "That was yesterday's password. \n" "You are not allowed access. \n"]
supersecretfile.writelines(password)
supersecretfile.close()

supersecretfile = open("topsecret.txt", "r")
print(supersecretfile.readlines()[0])
supersecretfile.close()
os.remove("topsecret.txt")
# End 


