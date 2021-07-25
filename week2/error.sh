#!/bin/bash

secret='shhh' #Don't tell anyone!
correct=val1

read -sp "what is the secret code? "

#if the user types in the correct secret, tell them they got it right!

if [ "$secret" = "$REPLY" ]; then
  echo You got it right.
  correct=true
else
  echo You got it wrong.
  correct=false
fi

echo

case $correct in
true)
    echo "You have unlocked the secret menu" #add a secret menu for people in the know.
   ;;

 *)
   echo "Go away." #people who get it wrong need to be told to go away
   ;;
esac
