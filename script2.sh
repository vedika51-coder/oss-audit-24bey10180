#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="vlc"

# Check if VLC is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    vlc) echo "VLC: a free and open-source multimedia player that can play almost any media format" ;;
    git) echo "Git: version control system for developers" ;;
    firefox) echo "Firefox: open-source web browser" ;;
    apache2) echo "Apache: web server software" ;;
    *) echo "Unknown software" ;;
esac
