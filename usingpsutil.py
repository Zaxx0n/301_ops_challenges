#!/usr/bin/env python3
# Script: Ops 301 Class 12 Ops Psutil
# Author: Zachary Derrick                    
# Date of latest revision:  9/14/22    
# Purpose: A Python script that fetches information using Psutil.

# Modules
import psutil
# Variables
cpustuff = psutil.cpu_times()

# Array 
fetchedinfo = [["Time spent by normal processes executing in user mode: ", cpustuff[0]], ["Time spent by normal processes executing in kernel mode: ", cpustuff[1]],
    ["Time when system was idle: ", cpustuff[2]], ["Time spent by priority process exectuing in user mode: ", cpustuff[3]], ["Time spent waiting for I/O to complete: ", cpustuff[4]],
    ["Time spent for servicing hardware interrupts: ", cpustuff[5]], ["Time spent for servicing software interrupts: ", cpustuff[6]],
    ["Time spent by other operating systems running in a virtualized environment: ", cpustuff[7]], ["Time spent running a virtual CPU for guest operating systems under the control of the Linux kernal", cpustuff[8]]]

with open('psutilcputimes.txt', "w") as f:
    for pretty in fetchedinfo:
        print(pretty[0] + str(pretty[1]), file=f)

# uses a 'with block' which insures that the file gets closed at the end of the block
# the 'w' is an argument of open that means write. this will overwrite the file. use 'a' to just append.
# with open('psutilcputimes.txt', "w") as f:
# print(psutil.cpu_times(), file=f)


