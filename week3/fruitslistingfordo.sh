#!/bin/bash
greenb='\e[42m' endcolour='\e[0m'

#Displaying a listing of fruits using for loop

fr=('Apple' 'Mango' 'Strawberry' 'Orange' 'Banana') #Create an array with the list of items to list

aleng="${#fr[@]}" #Take the length of the array

echo #Print a space

echo -e "$greenb${fr[@]} - for loop listing:$endcolour\n" #Print the listing heading on terminal

for ((i=0; i<$aleng; i++)) # for loop with the first index starting at 0 and increamenting to the length of the array minus 1 
    do
        echo "FRUIT: ${fr[i]}" # Iteratively print the fruit listing / items in the array 
        done 
echo
