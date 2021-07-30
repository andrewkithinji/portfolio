#!/bin/bash

#A script to read a text file and display appropriate message on the terminal

fname=$1 # variable to hold file content passed at script execution

#While loop to read input file iteratively line by line

while read line; do 

# case statement to select appropriate terminal display message depending on text content

case $line in
	"megafoldermaker.sh" )
		echo "$line - That file exists" ;;

	"../week1" )
		echo "$line - That’s a directory" ;;

	"." )
		echo "$line - That’s a directory" ;;

	"filenames.sh" )
		echo "$line - That file exists" ;;

	* )
		echo "$line - I don’t know what that is!" ;;
esac

done < $fname