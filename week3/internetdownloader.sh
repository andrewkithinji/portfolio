#!/bin/bash

for (( i=1; i>0; i++ )) #Create an infinate loop for loop
	do
		read -p "Please type a website URL to download or type 'exit' to quit: " url1 #Prompt the user to type a website URL
		
		if [ "$url1" = "exit" ] || [ "$url1" = "Exit" ] || [ "$url1" = "EXIT" ]  #Check user input does not equal to exit
			then
				echo "Goodbye!"
				break #exit the the loop when user input is EXIT or Exit or exit
		fi
        
		read -p "Please type the location where you would like to download the file: " loc1 #Prompt user for download destination folder
		
        echo

        echo "Chosen folder destination is: $loc1" # Display location variable ($loc1) value for troubleshooting only

        echo

		wget --convert-links $url1 -P $loc1 #use wget to save website to specified directory
	done #exit for loop