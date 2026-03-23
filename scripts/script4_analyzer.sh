#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script.sh /var/log/syslog [keyword]

LOGFILE=$1 [cite: 170]
KEYWORD=${2:-"error"} # Default to 'error' [cite: 171, 173]
COUNT=0

if [ ! -f "$LOGFILE" ]; then [cite: 174]
    echo "Error: File $LOGFILE not found." [cite: 176]
    exit 1
fi

while read -r LINE; do [cite: 178]
    if echo "$LINE" | grep -iq "$KEYWORD"; then [cite: 179]
        COUNT=$((COUNT + 1)) [cite: 181]
    fi
done < "$LOGFILE" [cite: 182]

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE" [cite: 183]
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5 [cite: 184]