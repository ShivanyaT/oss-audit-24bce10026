#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shivanya Tomar

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory in the list
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group using ls -ld
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get disk usage in human-readable format
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "Git Binary Check:"
# Check location and permissions of git binary
if [ -f "/usr/bin/git" ]; then
    ls -l /usr/bin/git
else
    echo "Git binary not found"
fi
