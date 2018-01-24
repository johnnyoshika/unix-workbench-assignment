#!/usr/bin/env bash
# File: guessinggame.sh

while true
do

    echo "How many files are in the current directory?"
    read guess
    actual=$(ls -l | grep ^- | wc -l)

    if [[ $guess =~ ^[0-9]+$ ]] && [[ $guess -eq $actual ]]
    then
        echo "'$guess' is correct!!!"
        break
    else
        echo $"'$guess' is wrong! Try again..."
        echo ""
    fi

done