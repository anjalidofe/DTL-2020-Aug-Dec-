#!/bin/bash
if [[ $# -eq 2 ]] ; then
    firstnum=$1
    secondnum=$2
    echo 1. Addition
    echo 2. Subtraction
    echo 3. Multiplication
    echo 4. Division
    echo 5. Exit
    echo Enter your choice:
    read choice
    # start computing
    if [[ $choice -eq 1 ]] ; then
        echo ----------------------------------------
        echo Addition of $firstnum and $secondnum is $((firstnum+secondnum))
        echo ----------------------------------------
        echo
    elif [[ $choice -eq 2 ]] ; then
        echo ----------------------------------------
        echo Subtraction of $firstnum and $secondnum is $((firstnum-secondnum))
        echo ----------------------------------------
        echo
    elif [[ $choice -eq 3 ]] ; then
        echo ----------------------------------------
        echo Multiplication of $firstnum and $secondnum is $((firstnum*secondnum))
        echo ----------------------------------------
        echo
    elif [[ $choice -eq 4 ]] ; then
        echo ----------------------------------------
        echo Division of $firstnum and $secondnum is $((firstnum/secondnum))
        echo ----------------------------------------
        echo
    elif [[ $choice -eq 5 ]] ; then
        exit
    else
        echo ----------------------------------------
        echo Invalid choice...
        echo ----------------------------------------
        echo
    fi
elif [[ $# -eq 0 ]] ; then
    while true
    do
        # Offer choices
        echo 1. Addition
        echo 2. Subtraction
        echo 3. Multiplication
        echo 4. Division
        echo 5. Exit
        echo Enter your choice:
        read choice
        # get operands and start computing based on the user's choice
        if [[ $choice -eq 1 ]] ; then
            echo Enter firstnum value:
            read firstnum
            echo Enter secondnum value:
            read secondnum
            echo ----------------------------------------
            echo Addition of $firstnum and $secondnum is $((firstnum+secondnum))
            echo ----------------------------------------
            echo
        elif [[ $choice -eq 2 ]] ; then
            echo Enter firstnum value:
            read firstnum
            echo Enter secondnum value:
            read secondnum
            echo ----------------------------------------
            echo Subtraction of $firstnum and $secondnum is $((firstnum-secondnum))
            echo ----------------------------------------
            echo
        elif [[ $choice -eq 3 ]] ; then
            echo Enter firstnum value:
            read firstnum
            echo Enter secondnum value:
            read secondnum
            echo ----------------------------------------
            echo Multiplication of $firstnum and $secondnum is $((firstnum*secondnum))
            echo ----------------------------------------
            echo
        elif [[ $choice -eq 4 ]] ; then
            echo Enter firstnum value:
            read firstnum
            echo Enter secondnum value:
            read secondnum
            echo ----------------------------------------
            echo Division of $firstnum and $secondnum is $((firstnum/secondnum))
            echo ----------------------------------------
            echo
        elif [[ $choice -eq 5 ]] ; then
            exit
        else
            echo ----------------------------------------
            echo Invalid choice.. Please try again
            echo ----------------------------------------
            echo
        fi
    done
else
    echo ----------------------------------------
    echo You have passed too many parameters or too less
    echo than the requirement.
    echo
    echo This program accepts a maximum of 2 arguments or no
    echo argument at all in order to run successfully.
    echo ----------------------------------------
fi




