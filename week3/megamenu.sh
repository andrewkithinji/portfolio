#!/bin/bash
red='\033[31m' blue='\033[34m' green='\033[32m' cyan='\033[36m' purple='\033[35m' greenb='\e[42m' endcolour='\e[0m' grey='\033[30m' #colour snippets

./passwordCheck.sh #Running the 'passwordCheck.sh' script 

if [ $? -eq 0 ]; then #PasswordCheck.sh return value is stored in $? variable. 0 indicates success, others indicates error
    #Display text on terminal when password.sh script exit code is 0
    echo
    # Input type of operation
    echo -e "${greenb}Menu option${endcolour}\n"
    echo -e "1. ${cyan}Create a folder${endcolour}"
    echo -e "2. ${cyan}Copy a folder${endcolour}"
    echo -e "3. ${cyan}Set a password${endcolour}"
    echo -e "4. ${cyan}Calculator${endcolour}"
    echo -e "5. ${cyan}Create week folders${endcolour}"
    echo -e "6. ${cyan}Check Filenames${endcolour}"
    echo -e "7. ${cyan}Download a files${endcolour}"
    echo -e "8. ${red}Exit${endcolour}"
    
    for (( i=1; i>0; i++ )) #Create an infinate loop for loop
	do
        read -p "Select a value 1 - 8: " userchoice # Read user input selection
        if [ $userchoice = 8 ]  #Check user input does not equal to exit
	         then
	            echo "Goodbye!"
	            break #exit the the loop when user input is EXIT or Exit or exit
            else
                case $userchoice in #Evaluation of user selection expression 
                    "1" ) #Running the foldermaker.sh script 
                    /home/student/scripts/portfolio/week2/foldermaker.sh ;;
                    "2" ) #Running the 'foldercopier.sh' script 
                    /home/student/scripts/portfolio/week2/foldercopier.sh ;;
                    "3" ) #Running the 'setPassword.sh' script 
                    /home/student/scripts/portfolio/week2/setPassword.sh ;; 
                    "4" ) #Running the 'simpleCalc.sh' script 
                    ./simpleCalc.sh ;; 
                    "5" ) #Running the 'megafoldermaker.sh' script 
                    ./megafoldermaker.sh ;; 
                    "6" ) #Running the 'filenames.sh' script 
                    ./filenames.sh ;; 
                    "7" ) #Running the 'filenames.sh' script 
                    ./internetdownloader.sh ;; 
                    * ) # invalid user input/selection message
                    echo -e "$userchoice  ${red}is not a valid selection, enter an integer value 1 - 8${endcolour}"
                    ;;
                esac # End case statement
        fi
    done #exit for loop
else #When password.sh script exit code is not 0 then immediately exit menu.sh with an exit code 1
    exit 1
fi