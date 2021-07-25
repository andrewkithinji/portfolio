#!/bin/bash
read -p "Please enter a folder name: " userfoldername #Prompt user to input a folder name, with the input value store the value in a user defined variable
read -sp "Please enter a secret password: " secretpassword #Prompt user to input a password and store the value in a user defined variable
echo #Move cursor to a new line
#echo "$secretpassword"  >  ~/scripts/portfolio/$userfoldername/secret.txt #Save user secret password in the user defined folder with the file name secret.txt 
echo $secretpassword | sha256sum > ~/scripts/portfolio/$userfoldername/secret.txt #Save user secret password hashed text in the user defined folder in the filesecret.txt 
exit 0 # successful script exit
