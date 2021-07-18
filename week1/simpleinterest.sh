#!/bin/bash
echo "Enter the principle amount:"
read p
echo "Enter the rate of interest:"
read r
echo "Enter the duration in years:"
read t 
si=$(expr $p \* $r \* $t / 100)
echo "The simple interest is: "
echo $si  
exit 0

