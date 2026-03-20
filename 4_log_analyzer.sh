#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog "error"
# Author: Sridhar Krishnan

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Ensure a log file argument was provided
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <path_to_logfile> [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Do-while style retry: check if file is empty
while true; do
    if [ -s "$LOGFILE" ]; then
        break # File has content, break out of the loop
    else
        read -p "The file $LOGFILE is empty. Press Enter to check again or type 'q' to quit: " USER_INPUT
        if [ "$USER_INPUT" == "q" ]; then
            echo "Exiting."
            exit 0
        fi
    fi
done

# Analyze the log file line by line
while IFS= read -r LINE; do
    # Check if the line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "=================================================="
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "=================================================="

# Print the last 5 matching lines using tail + grep
if [ $COUNT -gt 0 ]; then
    echo "Here are the last 5 occurrences:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
