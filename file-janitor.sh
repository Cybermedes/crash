#!/usr/bin/env bash

# File Janitor
# A Hyperskill project exercise
# Available at https://hyperskill.org/projects/330?track=26

function print_information {
    echo "File Janitor, $(date +"%Y")"
    echo "Powered by Bash"
    echo
}

function print_help {
    cat file-janitor-help.txt
}

check_file_path_arg() {
    # Check if file is a directory
    if [ -e "$1" ]; then
        echo "$1 is not a directory"
    # Check if file exists
    else
        echo "$1 is not found"
    fi
}

print_files() {
    # Script executed with the list option, no file path provided
    if [ -z "$1" ]; then
        echo "Listing files in the current directory"
        echo
        ls -1A .
    # One file path provided
    elif [ -e "$1" ] && [ -d "$1" ]; then
        echo "Listing files in $1"
        echo
        ls -1A "$1"
    # Check file-path argument
    else
        check_file_path_arg "$1"
    fi
}

get_files() {
    # Count the number of files
    number_of_tmp_files=$(find "$1" -maxdepth 1 -type f -name "*.tmp" | wc -l)
    number_of_log_files=$(find "$1" -maxdepth 1 -type f -name "*.log" | wc -l)
    number_of_py_files=$(find "$1" -maxdepth 1 -type f -name "*.py" | wc -l)

    # Total size in bytes of all file types, add zero if null
    size_of_tmp=$(($(find "$1" -maxdepth 1 -name "*.tmp" -type f -exec du -bc {} \+ | tail -1 | cut -f 1) + 0))
    size_of_log=$(($(find "$1" -maxdepth 1 -name "*.log" -type f -exec du -bc {} \+ | tail -1 | cut -f 1) + 0))
    size_of_py=$(($(find "$1" -maxdepth 1 -name "*.py" -type f -exec du -bc {} \+ | tail -1 | cut -f 1) + 0))

    echo "$number_of_tmp_files tmp file(s), with total size of $size_of_tmp bytes"
    echo "$number_of_log_files log file(s), with total size of $size_of_log bytes"
    echo "$number_of_py_files py file(s), with total size of $size_of_py bytes"
}

generate_report() {
    # Script executed with the list option, no file path provided
    if [ -z "$1" ]; then
        echo "The current directory contains:"
        echo
        get_files .
    # One file path provided
    elif [ -e "$1" ] && [ -d "$1" ]; then
        echo "$1 contains:"
        echo
        get_files "$1"
    # Check file-path argument
    else
        check_file_path_arg "$1"
    fi
}

clean_files() {
    echo -n "Deleting old log files..."
    count=$(find "$1" -maxdepth 1 -type f -name "*.log" -mtime +3 | wc -l)
    find "$1" -maxdepth 1 -type f -name "*.log" -mtime +3 -exec rm -f {} \;
    echo " done! $count files have been deleted"

    echo -n "Deleting temporary files..."
    count=$(find "$1" -maxdepth 1 -type f -name "*.tmp" | wc -l)
    find "$1" -maxdepth 1 -type f -name "*.tmp" -exec rm -f {} \;
    echo " done! $count files have been deleted"

    echo -n "Moving python files... "
    count=$(find "$1" -maxdepth 1 -type f -name "*.py" | wc -l)
    if [[ $count -gt 0 ]]; then
        if [ ! -e "$1/python_scripts" ]; then
            mkdir "$1/python_scripts"
        fi
        find "$1" -maxdepth 1 -type f -name "*.py" -exec mv {} "$1/python_scripts/" \;
    fi
    echo "done! $count files have been moved"
    echo
}

clean_directory() {
    # Script executed with the list option, no file path provided
    if [ -z "$1" ]; then
        echo "Cleaning the current directory..."
        echo
        clean_files .
        echo "Clean up of the current directory is complete!"
    # One file path provided
    elif [ -e "$1" ] && [ -d "$1" ]; then
        echo "Cleaning $1..."
        echo
        clean_files "$1"
        echo "Clean up of $1 is complete!"
    # Check file-path argument
    else
        check_file_path_arg "$1"
    fi
}

if [ "$1" == "help" ]; then
    print_information
    print_help
elif [ "$1" == "list" ]; then
    print_information
    print_files "$2"
elif [ "$1" == "report" ]; then
    print_information
    generate_report "$2"
elif [ "$1" == "clean" ]; then
    print_information
    clean_directory "$2"
else
    print_information
    echo
    echo "Type file-janitor.sh help to see available options"
fi
