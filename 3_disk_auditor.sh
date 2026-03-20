#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sridhar Krishnan

# Array of target directories, including VLC's config path
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/etc/vlc")

echo "=================================================="
echo "            Directory Audit Report                "
echo "=================================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and owner using ls and awk
        PERMS_OWNER=$(ls -ld "$DIR" | awk '{print "Perms:", $1, "| Owner:", $3, ":", $4}')
        # Extract size using du and cut
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => $PERMS_OWNER | Size: $SIZE"
    else
        echo "$DIR => Warning: Directory does not exist on this system."
    fi
done
echo "=================================================="
