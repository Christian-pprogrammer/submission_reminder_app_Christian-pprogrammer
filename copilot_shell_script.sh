#!/bin/bash

# Prompt user for the new assignment name
read -p "Enter the new assignment name: " new_assignment

# Get the directory where the script is located
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Find the config.env file under any directory matching submission_reminder_* starting from the script's directory
config_path=$(find "$script_dir" -type f -name config.env -path "*/submission_reminder_*/config/config.env" | head -n 1)

# Check if config.env was found
if [[ -z "$config_path" ]]; then
    echo "Error: config.env not found in any submission_reminder_* directory under $script_dir."
    exit 1
fi

# Update the ASSIGNMENT value in line 2 using sed
sed -i "2s|^ASSIGNMENT=.*|ASSIGNMENT=\"$new_assignment\"|" "$config_path"

echo "Assignment updated to \"$new_assignment\" in config/config.env"
