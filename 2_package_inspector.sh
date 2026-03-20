#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sridhar Krishnan

PACKAGE="vlc"

echo "Inspecting package: $PACKAGE..."

# Check if package is installed (using dpkg for Debian/Ubuntu based systems)
if dpkg -s "$PACKAGE" &> /dev/null; then
    echo "Status: $PACKAGE is installed."
    echo "--- Package Details ---"
    # Extract version and description using grep and pipe
    dpkg -s "$PACKAGE" | grep -E '^Version|^Description' | head -n 2
else
    echo "Status: $PACKAGE is NOT installed on this system."
fi

echo "-----------------------"
# Case statement that prints a one-line philosophy note based on the name
case $PACKAGE in
    httpd|apache2) 
        echo "Philosophy: Apache - The web server that built the open internet." 
        ;;
    mysql-server|mysql) 
        echo "Philosophy: MySQL - Open source at the heart of millions of apps." 
        ;;
    vlc) 
        echo "Philosophy: VLC - Plays anything, built by students, sharing multimedia freedom." 
        ;;
    firefox) 
        echo "Philosophy: Firefox - A nonprofit's fight for a free and open web." 
        ;;
    *) 
        echo "Philosophy: An essential piece of the open-source puzzle." 
        ;;
esac
