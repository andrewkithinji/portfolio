#!/bin/bash
./passwordCheck.sh #Running the 'passwordCheck.sh' script 

if [ $? -eq 0 ]; then #The passwordCheck.sh return value is stored in $?. 0 indicates success, others indicates error
    #Display text on terminal when password.sh script exit code is 0
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
    read -p "Select a value 1, 2 or 3: " userchoice # Read user input selection
    
    case $userchoice in #Evaluation of user selection expression 
       "1" ) #Running the foldermaker.sh script 
            ./foldermaker.sh ;;
        "2" ) #Running the 'foldercopier.sh' script 
            ./foldercopier.sh ;;
        "3" ) #Running the 'setPassword.sh' script 
            ./setPassword.sh ;; 
        * ) # invalid user input/selection message
         echo "$userchoice is not a valid selection, enter an integer value 1, 2, or 3 "
         ;;
        esac # End case statement

            #if [[ "$userchoice" -ge 1 ]] && [[ "$userchoice" -le 3 ]] ; then # check a for a valid user input choice
            #    echo "Valid choice"
            #    exit 0
            #else # invalid user input choice message
            #   echo "Enter an integer 1, 2, or 3"
            #   exit 1
            #fi
else #When password.sh script exit code is not 0 then immediately exit menu.sh with an exit code 1
    exit 1
fi
