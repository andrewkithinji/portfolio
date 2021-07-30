#!/bin/bash 
#Folder copying script.
#Prompt user for input source folder/directory name.
read -p "Type the name of the folder you would like to copy: " folderName
#if the name is a valid directory "week2" 
if [ -d "$folderName" ]; then 
   
   #Prompt user for input destination folder/directory name.
   read -p "Type the name of the destination folder: " newFolderName 
   #Copy "week2" directory with it's content to a new location "week3" within the same root directory "portifolio".
   cp -r "$folderName" "$newFolderName"
else

    #Otherwise, print an error.
    echo "I couldn't find that folder"
fi

exit 0

