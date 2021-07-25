#!/bin/bash
#password complexity validation
echo "enter the password" # display enter password text to user/terminal
read password # capture user keyboard input password
len="${#password}" # extract the user password string length form the password variable
if test $len -ge 8 ; then  # checks if password string length is greater or equal to 8 characters
   echo "$password" | grep -q [0-9] # check if numbers are included in the password without printing the included results to the terminal
   if test $? -eq 0 ; then # confirm number(s) are included i.e. not equal to zero
    echo "$password" | grep -q [A-Z] # Check if uppercase characters are included in the password without printing the included results to the terminal
    if test $? -eq 0 ; then # confirm uppercase characters are included i.e. not equal to zero
    echo "$password" | grep -q [a-z] # Check if lowercase characters are included in the password without printing the included results to the terminal
    if test $? -eq 0 ; then # confirm lower characters are included i.e. not equal to zero
    echo "$password" | grep -q [$,@,#,%] # Check if special characters ($,@,#,%) are included in the password without printing the included results to the terminal
    if test $? -eq 0 ; then #confirm special characters are included i.e. not equal to zero 
    echo "Strong password"  # Printout a message on terminal “Strong password” when password length is >= 8, upper case and lower case characters are included, as well as special characters $,@,#,%  
        else 
        echo "weak password include special chars" # Print a message on terminal if special characters are not included
        fi 
    else 
    echo "weak password include lower case char" # Print a message on terminal if lower case characters are not included
     fi 
    else 
    echo "weak password include capital char"  # Print a message on terminal if upper case characters are not included
    fi 
    else 
    echo "please include the numbers in password it is weak password"  # Print a message on terminal if numbers are not included
    fi 
else 
echo "password length should be greater than or equal 8 hence weak password" # Print a message on terminal if password string length is less than 8 characters
fi
