#!/bin/bash
# Show only statements that contain sed statements
grep -r '\ssed\s' /home/student/scripts/portfolio

#Show only lines that start with the letter m
grep -r '^m.*' /home/student/scripts/portfolio

#Show only lines that contain three digit numbers
grep -rP '.*\s\d{3}\s.*' /home/student/scripts/portfolio

#All echo statements with at least three words
grep -rP '\w{3,}' /home/student/scripts/portfolio

#All lines that would make a good password
grep -rP '[A-Z]+[a-z]{5}[0-9]+[_.+!@$#%^&]+' /home/student/scripts/portfolio
