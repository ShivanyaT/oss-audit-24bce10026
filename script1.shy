#!/bin/bash
# Script 1: System Identity Report
# Author: Shivanya Tomar | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Shivanya Tomar"
ROLL_NO="24BCE10026"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)                              # Get kernel version
USER_NAME=$(whoami)                             # Get current logged-in user
HOME_DIR=$HOME                                  # Get home directory path
UPTIME=$(uptime -p 2>/dev/null || uptime)       # Get uptime, fallback if -p not supported
DATE=$(date)                                    # Get current date and time

# Get OS distribution name from /etc/os-release
if [ -f /etc/os-release ]; then
    # Extract PRETTY_NAME value, remove quotes
    DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO="Unknown Linux Distribution"
fi

# --- Display ---
echo "======================================="
echo "     System Identity Report"
echo "======================================="
echo "Student Name    : $STUDENT_NAME"
echo "Roll Number     : $ROLL_NO"
echo "Software        : $SOFTWARE_CHOICE"
echo "OS Distribution : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "License         : GNU General Public License v2 (GPL v2)"
echo "======================================="
