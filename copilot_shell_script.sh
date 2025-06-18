#!/bin/bash

# Prompt user for the new assignment name
read -p "Enter the new assignment name: " new_assignment

# Find the config.env file under any directory matching submission_reminder_*
config_path=$(find . -type f -path "./submission_reminder_*/config/config.env" | head -n 1)

# Check if config.env was found
if [[ -z "$config_path" ]]; then
    echo "Error: config.env not found in any submission_reminder_* directory."
    exit 1
fi

# Update the ASSIGNMENT value in line 2 using sed
sed -i "2s|^ASSIGNMENT=.*|ASSIGNMENT=\"$new_assignment\"|" "$config_path"

echo "Assignment updated to \"$new_assignment\" in $config_path"

