#!/user/bin/bash


# Script: ConditionalMenuSystem
# Author: Zachary Derrick                    
# Date of latest revision:  9/1/22    
# Purpose: Create a bash script that launches a menu system with the following options:
#          Hello world (prints “Hello world!” to the screen)
#          Ping self (pings this computer’s loopback address)
#          IP info (print the network adapter information for this computer)
#          Allows user to select to Exit
#          Next, the user input should be requested.
#          The program should next use a conditional statement to evaluate the user’s input, then act according to what the user selected.
#          Use a loop to bring up the menu again after the request has been executed.

  
 msg="Please Select from the Following Options"

again="Make Another Selection or Press 4 to Exit"

echo $msg
  select opt in "Print 'Hello world!'" "Ping Self" "IP Info" "Exit" ; do
        case $opt in
            "Print 'Hello world!'" ) echo "Hello world" && echo -e "\n$again" ;;
            "Ping Self" ) ping 127.0.0.1 -c 3 && echo -e "\n$again" ;;
            "IP Info" ) sudo lshw -class network -short && echo -e "\n$again" ;;
            "Exit" ) echo "Good bye"; break;;     
        esac    
        REPLY=   
    done


#end