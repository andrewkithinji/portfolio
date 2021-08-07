#!/bin/bash

#This function prints a given error
      
printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}
      
#This function will get a value between the 2nd and 3rd arguments 
getNumber()
{
    read -p "$1: "
    while (( $REPLY < $correct || $REPLY > $correct )); do
        if (( $REPLY < $correct && $REPLY >= $2 )); then # validate low input values
           printError "Too Low!"
           read -p "$1: "
        elif (( $REPLY > $correct && $REPLY <= $3 )); then # validate high input values
            printError "Too High!"
            read -p "$1: "
        else # validate input is not out of expected range (1 - 100)
            printError "Input must be between $2 and $3"
            read -p "$1: "
        fi
    done
} 
correct=42 # set correct input value    
getNumber "please type a number between 1 and 100" 1 100 #Call function with default arguments (1 and 100)

echo "Correct!"