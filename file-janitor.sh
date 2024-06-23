#!/usr/bin/env bash

# File Janitor
# A Hyperskill project exercise
# Available at https://hyperskill.org/projects/330?track=26

function print_information {
    echo "File Janitor, $(date +"%Y")"
    echo "Powered by Bash"
}

function print_help {
    cat file-janitor-help.txt
}

print_files() {
    echo
    # One file path provided
    if [ $# -eq 1 ] && [ -n "$1" ]; then
        # Check if file exists
        if [ ! -e "$1" ]; then
            echo "$1 is not found"
        # Check if file is a directory
        elif [ ! -d "$1" ]; then
            echo "$1 is not a directory"
        # Print a files inside the directory
        else
            echo "Listing files in $1"
            echo
            ls -1A "$1"
        fi
    # Script executed with the list option, no file path provided
    else
        echo "Listing files in the current directory"
        echo
        ls -1A
    fi
}

if [ $# -ge 1 ] && [ "$1" == "help" ]; then
    print_information
    print_help
elif [ $# -ge 1 ] && [ "$1" == "list" ]; then
    print_information
    print_files "$2"
else
    print_information
    echo
    echo "Type file-janitor.sh help to see available options"
fi
