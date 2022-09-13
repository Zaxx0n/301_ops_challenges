#!/usr/bin/env python3
# Script: Ops 301 Class 10 Ops Conditional Statements
# Author: Zachary Derrick                    
# Date of latest revision:  9/12/22    
# Purpose: Create if statements using these logical conditionals below. 
# Each statement should print information to the screen depending on if the condition is met.



# Declaration of variables
Seahawks = 17
Broncos = 16


# Main
if Seahawks == Broncos: 
    print("It was a tie game.")
elif Seahawks > Broncos:
    print("Seahawks win!")
elif Seahawks != Broncos:
    print("Okay, so it wasn't a tie.")
elif Seahawks < Broncos: 
    print("Broncos win...") 
elif Seahawks <= Broncos:
    print("Wait, so did the Broncos win?")
elif Seahawks >= Broncos:
    print("So are you saying they tied?")
else:
     print("Who won the game?")

 

# End