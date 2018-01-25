#!/usr/bin/env bash
# File: guessinggame.sh

while true
do

    echo "How many files are in the current directory?"
    read guess
    actual=$(ls -l | grep ^- | wc -l)

    if [[ ! $guess =~ ^[0-9]+$ ]]
    then
        echo "'$guess' is not a number. Try again..."
        echo ""
        continue
    fi

    if [[ $guess -eq $actual ]]
    then
        echo "'$guess' is correct!!!"
        break
    fi

    if [[ $guess -lt $actual ]]
    then
        echo $"'$guess' is too low! Try again..."
    else
        echo $"'$guess' is too high! Try again..."
    fi
    
    echo ""

done