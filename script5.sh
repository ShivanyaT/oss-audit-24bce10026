#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shivanya Tomar

echo "Answer three questions to generate your manifesto."
echo ""

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date
DATE=$(date '+%d %B %Y')

# Output file name based on current user
OUTPUT="manifesto_$(whoami).txt"

# Compose and save the manifesto
{
    echo "On $DATE, I reflect on the importance of open source."
    echo "I regularly use $TOOL, which helps me in my daily work."
    echo "For me, freedom means $FREEDOM."
    echo "I believe in building $BUILD and sharing it openly so that others can learn, improve, and collaborate."
    echo "Open source is not just about code, but about community and knowledge sharing."
} > "$OUTPUT"

# Alias concept: This script could use aliases like 'll' for listing, but that's a shell feature.
# alias ll='ls -l'

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"
