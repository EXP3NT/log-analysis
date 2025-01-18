#!/bin/bash

LOG_FILE="/var/log/alternatives.log"
ALERT_WORD="ERROR"

# Searching for errors in the log file
if grep -q "$ALERT_WORD" "$LOG_FILE"; then
    echo "ERROR: '$ALERT WORD' found in log file!" | mail -s "Log Warning" your@mail.com
    echo "Alert sent."
else
    echo "Everything is fine, '$ALERT_WORD' not found in log file."
