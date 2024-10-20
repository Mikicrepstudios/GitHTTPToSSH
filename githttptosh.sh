#!/bin/bash

# Get the current origin URL
current_origin=$(git remote get-url origin)

# Check if the origin is already using SSH
if [[ $current_origin == git@github.com:* ]]; then
  echo "The origin is already using SSH: $current_origin"
  exit 0
fi

# Extract the GitHub user/repo part from the HTTPS origin
repo_path=$(echo "$current_origin" | sed -n 's#https://github.com/\(.*\)#\1#p')

# If repo_path is empty, the URL format might not be correct
if [[ -z $repo_path ]]; then
  echo "Failed to extract repository path from the current origin: $current_origin"
  exit 1
fi

# Construct the new SSH origin URL
new_origin="git@github.com:${repo_path%.git}.git"

# Set the new origin URL using SSH
git remote set-url origin "$new_origin"

# Confirm the change
echo "Origin changed to SSH: $new_origin"

