#!/bin/bash


#cat sha256sum --check --status <./secret.txt 
#echo "$(cat < ./secret.txt)" | sha256sum --check  --status
#sha256sum --check --status "./secret.txt"

#Prompt user to input a folder name, with the input value store the value in a user defined variable
read -p "Please enter a folder name: " userfoldername 
#Prompt user to input a password and store the value in a user defined variable
read -sp "Please enter a secret password: " secretpassword 
echo #Move cursor to a new line
#Save user secret password hashed text in the user defined folder in the filesecret.txt 
echo $secretpassword | sha256sum > ~/scripts/portfolio/$userfoldername/secret2.txt 

# Read the password hash file text and store it in a variable
hash_var1=$( cat < ./secret.txt )
hash_var2=$( cat < ./secret2.txt )

echo $hash_var1
echo $hash_var2

#$ sha256sum filename1   >    filename2
#$ sha256sum -c  filename2

#conditional check to validate that the new password string provided matches previously stored hash 
if [[ "$hash_var1" == "$hash_var2" ]]; then #Match
      echo "Access Granted"  #print success message
      exit 0  #exit code 1
else #No match
     echo "Access Denied" #Print error message
	exit 1  #exit code 1
fi


