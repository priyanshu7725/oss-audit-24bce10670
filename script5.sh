#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Priyanshu Kumar | Course: Open Source Software
# This script generates a personalised open source philosophy statement

echo "Answer three questions to generate your manifesto."
echo ""

# Read user input interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date
DATE=$(date '+%d %B %Y')

# Output file named after current user
OUTPUT="manifesto_$(whoami).txt"

# Compose and write manifesto to file
# Using >> to append each line to the output file
echo "Open Source Manifesto — $(whoami)" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL every day. To me, freedom means $FREEDOM. I would build $BUILD and share it openly so others can use and improve it." >> $OUTPUT

# Confirm and display the manifesto
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
