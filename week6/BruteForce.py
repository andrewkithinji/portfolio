#!/bin/python3
#Import hash amd random libraries
import random
import hashlib
#hidden password hash  
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"  
#Define password character scope 
character = "0123456789abcdefghijklmnopqrstuvwxyz"
#pass the password characters as a string list
character_list=list(character)
#initialise a variable to pass to the while loop
guess = ""
#repeat each random password generated
while (guess != passwordHash):
    #Match random characters to predefined password length
    guess = random.choices(character_list,k=5)
    #Joint random password guess without character separators
    guess = "".join(guess)
    #hash the random generated password
    wordlistHash = hashlib.sha256(guess.encode("utf-8")).hexdigest()
    print(f"Trying password {guess}:{wordlistHash}")
    #if the hash is the same as the correct password's hash then we have cracked the password!
    if (wordlistHash == passwordHash):
        print(f"Password has been cracked! it was {guess}")
        break 