#!/bin/bash
# Script 4: Log File Analyzer
# Author: Priyanshu Kumar | Course: Open Source Software
# This script reads a log file and counts occurrences of a keyword

# Accept log file and keyword as command line arguments
LOGFILE=$1
KEYWORD=${2:-"error"}  # Default keyword is 'error' if not provided

# Counter variable
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# While loop to read file line by line
while IFS= read -r LINE; do
    # Check if line contains the keyword (case insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print summary
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Print last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
