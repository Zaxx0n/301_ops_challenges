#!/usr/bin/env python3
# Script: Ops 301 Class 13 Ops Psutil
# Author: Zachary Derrick                    
# Date of latest revision:  9/15/22    
# Purpose: A Python script that prompts the user to type a string input as the variable for your destination URL.
#           Prompt the user to select a HTTP Method 
#           Print to the screen the entire request your script is about to send. Ask the user to confirm before proceeding
#           Using the requests library, perform a GET request against your lab web server
#           For the given header, translate the codes into plain terms that print to the screen;
#           for example, a 404 error should print Site not found to the terminal instead of 404.
#           For the given URL, print response header information to the screen.

# import modules 
import requests


def requestlib():
    print("Please enter a destination URL for GET Reqeust: ")
    adrs =input()
    getr = requests.get(adrs)
    postr = requests.post(adrs, data={'key':'value'})
    putr = requests.put(adrs, data={'key':'value'})
    delete = requests.delete(adrs)
    headr = requests.head(adrs)
    patch = requests.patch(adrs, data={'key':'value'})
    options = requests.options(adrs)
    
# functions 
# answer = yes_or_no()
def menu():
    print("[1] STATUS CODE")
    print("[2] POST")
    print("[3] PUT")
    print("[4] DELETE")
    print("[5] HEAD")
    print("[6] PATCH")
    print("[7] OPTIONS")
    print("[0] EXIT")



requestlib
menu()
option = int(input("Please Select the Request Type: ")) 

while option != 0:
    if option == 1:
        if getr.status_code == 200:
            print('Success!')
        elif response.status_code == 404:
            print('Not Found.')
    if option == 2:
             postr   
    else:
        print("Please select again: ")
    print()        
    menu()
    option = int(input("Please Select the Request Type: ")) 



print(requests.__version__)
print(requests.__copyright__)    
# while True: 
#   options=menu.keys()
#   options.sort()
# for entry in options: 
#     print entry, menu[entry]

#     selection=raw_input("Please Select the HTTP Method:") 
#     if selection =='1': 
#         print "add" 
#     elif selection == '2': 
#         print "delete"
#     elif selection == '3':
#         print "find" 
#     elif selection == '4': 
#       break
#     else: 
#       print "Unknown Option Selected!"