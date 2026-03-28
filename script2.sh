#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Priyanshu Kumar | Course: Open Source Software
# This script checks if a package is installed and prints its details

# Set the package name
PACKAGE="vlc"

# Check if package is installed using dpkg
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    # Print version, license and summary using dpkg and grep
    dpkg -s $PACKAGE | grep -E 'Version|Status|Homepage'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement: philosophy note based on package name
case $PACKAGE in
    vlc)
        echo "VLC: the open source media player that plays anything, anywhere" ;;
    httpd)
        echo "Apache: the web server that built the open internet" ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps" ;;
    firefox)
        echo "Firefox: a nonprofit fighting to keep the web open and free" ;;
    git)
        echo "Git: the tool Linus built when proprietary software failed him" ;;
esac
