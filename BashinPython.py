#!/usr/bin/env python3
# Script: Ops 301 Class 06 Ops Bash in Python
# Author: Zachary Derrick                    
# Date of latest revision:  9/6/22    
# Purpose: Create a script that runs bash operations in Python.

import os

# declares variables 

who_am_i = os.system("whoami")
ipa = os.system("ip a")
lshw = os.system("sudo lshw -short")

# main

print(who_am_i)
print(ipa)
print(lshw)

# end