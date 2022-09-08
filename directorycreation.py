#!/usr/bin/env python3
# Script: Ops 301 Class 07 Ops Directory Creation
# Author: Zachary Derrick                    
# Date of latest revision:  9/7/22    
# Purpose: Create a Python script that generates all directories, sub-directories and files for a user-provided directory path.
# Import libraries

import os

# Declaration of variables

### Read user input here into a variable
fpath = input("Please enter your file path:")
# Declaration of functions
  
### Declare a function here
def walkem(fpath):
    for (root, dirs, files) in os.walk(fpath):
        ### Add a print command here to print ==root==
        print(root)
        ### Add a print command here to print ==dirs==
        print(dirs)
        ### Add a print command here to print ==files==
        print(files)

# Main
# fpath = input("Please enter your file path:")
walkem(fpath)
### Pass the variable into the function here

# End