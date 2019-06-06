#!/bin/sh

if [[ $# -eq 0 ]] ; then
  git config --local user.name Bob
  git config --local user.email bob@example.com
  echo "You have now gone incognito"
elif [ $1 = "off" ] ; then
  username=$(git config --global user.name)
  email=$(git config --global user.email)
  git config --local user.name "$username"
  git config --local user.email "$email"
  echo "Disabled incognito mode"
else
  echo "Invalid arguments supplied"
fi
