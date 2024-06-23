#!/usr/bin/env bash

# File Janitor
# A Hyperskill project exercise
# Available at https://hyperskill.org/projects/330?track=26

function print_information {
    echo "File Janitor, $(date +"%Y")"
    echo "Powered by $(bash --version | head -n1)"
}

function print_help {
    echo
    echo "File Janitor is a tool to discover files and clean directories"
    echo
    echo "Usage: file-janitor [option] [file_path]"
    echo
    echo "    options:"
    echo "        help        displays this help file"
}

if [ $# -eq 1 ] && [ "$1" == "help" ]; then
    print_information
    print_help
else
    print_information
fi
