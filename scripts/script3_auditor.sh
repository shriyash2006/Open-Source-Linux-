#!/bin/bash
# Script 3: Disk and Permission Auditor
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp") [cite: 152]

echo "Directory Audit Report" [cite: 153]
echo "----------------------"

for DIR in "${DIRS[@]}"; do [cite: 154]
    if [ -d "$DIR" ]; then [cite: 155]
        # Extracting permissions, owner, and group [cite: 157]
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE" [cite: 157]
    else
        echo "$DIR does not exist on this system" [cite: 161]
    fi
done

# VLC Config check [cite: 162]
VLC_CONFIG="$HOME/.config/vlc"
if [ -d "$VLC_CONFIG" ]; then
    echo "VLC Config Directory found at $VLC_CONFIG"
    ls -ld "$VLC_CONFIG"
fi