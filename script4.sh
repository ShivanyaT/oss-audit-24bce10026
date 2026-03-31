#!/bin/bash
# Script 4: Log File Analyzer
# Author: Shivanya Tomar
# Usage: ./script4.sh logfile [keyword]

LOGFILE=$1                     # First argument: log file path
KEYWORD=${2:-"error"}          # Second argument: keyword, default to "error"
COUNT=0

# Check if log file is provided
if [ -z "$LOGFILE" ]; then
    echo "Error: No log file specified."
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty."
    exit 1
fi

# Read file line by line and count matches
while IFS= read -r LINE; do
    # Case-insensitive match for keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
# Show last 5 occurrences with case-insensitive grep
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
