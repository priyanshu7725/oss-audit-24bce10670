#!/bin/bash
# Script 1: System Identity Report
# Author: Priyanshu Kumar| Course: Open Source Software
# This script displays system information like a welcome screen

# Variables
STUDENT_NAME="Priyanshu Kumar"     # Student name
SOFTWARE_CHOICE="VLC Media Player" # Chosen software for audit

# Gather system info using command substitution
KERNEL=$(uname -r)                 # Get kernel version
USER_NAME=$(whoami)                # Get current logged in user
UPTIME=$(uptime -p)                # Get system uptime in human readable format
DISTRO=$(lsb_release -d | cut -f2) # Get Linux distribution name
DATE=$(date '+%d %B %Y %H:%M:%S') # Get current date and time
HOME_DIR=$(echo $HOME)             # Get home directory of current user

# Display the system identity report
echo "================================================"
echo "       Open Source Audit — $STUDENT_NAME        "
echo "================================================"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Date and Time   : $DATE"
echo "This system runs on Linux, licensed under GPL v2"
