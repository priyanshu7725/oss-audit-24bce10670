#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Priyanshu Kumar | Course: Open Source Software
# This script loops through system directories and reports their size and permissions

# List of directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"

# For loop to go through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner and group using ls and awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get directory size using du
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Check if VLC config directory exists
VLC_CONFIG="$HOME/.config/vlc"
echo "VLC Config Directory Check:"
if [ -d "$VLC_CONFIG" ]; then
    # Print permissions of VLC config directory
    echo "Found: $(ls -ld $VLC_CONFIG)"
else
    echo "VLC config directory not found at $VLC_CONFIG"
fi
