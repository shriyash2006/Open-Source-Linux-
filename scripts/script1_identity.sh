#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name]
# Course: Open Source Software

# --- Variables [cite: 105]
STUDENT_NAME="[Your Name]"
SOFTWARE_CHOICE="VLC Media Player"
DISTRO=$(hostnamectl | grep "Operating System" | cut -d: -f2)
KERNEL=$(uname -r) [cite: 110]
USER_NAME=$(whoami) [cite: 110]
UPTIME=$(uptime -p) [cite: 111]
CURRENT_TIME=$(date)

# --- Display [cite: 113]
echo "=========================================="
echo " $SOFTWARE_CHOICE Open Source Audit" [cite: 117]
echo "=========================================="
echo "Student: $STUDENT_NAME" [cite: 118]
echo "Distro : $DISTRO"
echo "Kernel : $KERNEL" [cite: 120]
echo "User   : $USER_NAME" [cite: 121]
echo "Uptime : $UPTIME" [cite: 123]
echo "Date   : $CURRENT_TIME"
echo "------------------------------------------"
echo "Note: This OS is covered by various Open Source licenses (GPL/MIT)." [cite: 124]