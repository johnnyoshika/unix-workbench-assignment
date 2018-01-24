#!/usr/bin/env bash
# File: guessinggame.sh

while true
do

    echo "How many files are in the current directory?"
    read guess
    actual=$(ls -l | grep ^- | wc -l)

    if [[ $guess = $actual ]]
    then
        echo "'$guess' is correct!!!"
        break
    else
        echo $"'$guess' is wrong! Try again..."
        echo ""
    fi

done