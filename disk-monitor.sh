#/!bin/bash



#This file moniotr the disk space and checks it it is more tan or less than threshold



#!/bin/bash

# Set threshold
THRESHOLD=90 >> diskUsage

# Get disk usage (with % symbol)
USAGE=$(df -h / | awk 'NR==2 {print $5}') >> diskUsage


# Get date
DATE=$(date) >> diskUsage

# Compare usage
if [[ "$USAGE" -ge "$THRESHOLD" ]]; then
    echo "[$DATE]  Disk Usage is High: $USAGE% (Threshold: $THRESHOLD%)" >> diskUsage
else
    echo "[$DATE]  Disk Usage is OK: $USAGE% (Threshold: $THRESHOLD%)" >> diskUsage
fi





