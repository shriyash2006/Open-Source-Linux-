#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="vlc" # Your chosen software [cite: 133]

# Check if package is installed (using dpkg for Debian/Ubuntu) [cite: 135]
if dpkg -s $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed." [cite: 138]
    dpkg -s $PACKAGE | grep -E 'Version|License|Description' [cite: 139]
else
    echo "$PACKAGE is NOT installed." [cite: 140]
fi

# Philosophy Case Statement [cite: 141]
case $PACKAGE in
    vlc)
        echo "VLC: The student-built player that proved community code beats proprietary formats." [cite: 142]
        ;;
    httpd)
        echo "Apache: The web server that built the open internet." [cite: 143]
        ;;
    *)
        echo "Exploring the vast world of FOSS software."
        ;;
esac
