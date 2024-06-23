#!/usr/bin/env bash
# This script creates and prints a progress bar
# Main character for the bar:
bar_char="#"

# Length of progress bar; number of chars inside the []
bar_width=50

# Total number of iterations
total_iterations=100

# Number of iterations per character; example: one # represents % progress
iterations_per_char=$((total_iterations / bar_width))

for ((i=0; i<=total_iterations; i++)); do
	# Counting number of the bar in x%
	progress=$((i * 100 / total_iterations))
	# Number of chars to print
	chars=$((i / iterations_per_char))

	# Print the bar on the same line
	echo -ne "\r["
	for ((j=0; j<bar_width; j++)); do
    	if [ $j -lt $chars ]; then
	  		echo -ne "$bar_char"
    	else
			echo -ne " "
    	fi
	done
	echo -ne "] $progress%"
	sleep 0.1
done
echo ""
