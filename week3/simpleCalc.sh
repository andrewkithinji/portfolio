#!/bin/bash
red='\033[31m' blue='\033[34m' green='\033[32m' purple='\033[35m' endcolour='\e[0m' greenb='\e[42m' #colour snippet reference

#Simple bash calculator


# Prompt user input

read -p "Enter first integer number: " num1
read -p "Enter second integer number: " num2

echo

# Input type of operation
echo -e "${greenb}Enter Calculator Option${endcolour}\n"
echo -e "1. ${blue}Addition${endcolour}"
echo -e "2. ${green}Subtraction${endcolour}"
echo -e "3. ${red}Multiplication${endcolour}"
echo -e "4. ${purple}Division\n${endcolour}"

read calc
echo
# Case calculator operations
case $calc in
  1) #Addition
    add=$(( $num1 + $num2 ))
    echo -e "$num1 + $num2 =${blue} $add ${endcolour}\n"
  ;;
  2) #Subtraction
    sub=$(( $num1 - $num2 ))
    echo -e "$num1 - $num2 =${green} $sub ${endcolour}\n"
  ;;
  3) #Multiplication
    mul=$(expr $num1 \* $num2)
    echo -e "$num1 * $num2 =${red} $mul ${endcolour}\n"
  ;;
  4) #Division
    div=`echo "scale=2; $num1 / $num2" | bc` 
    echo -e "$num1 / $num2 =${purple} $div ${endcolour}\n"
  ;;
esac