#!/bin/bash
# Script 1: System Identity Report
# Author: SridharKrishnan
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Sridhar Krishnan"
SOFTWARE_CHOICE="VLC Media Player"

# --- System info
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d'"' -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date +"%A, %B %d, %Y %T")

# --- Display
echo "=================================================="
echo "          Open Source Audit Welcome Screen        "
echo "=================================================="
echo "Student Name : $STUDENT_NAME"
echo "Target Audit : $SOFTWARE_CHOICE"
echo "--------------------------------------------------"
echo "OS Distro    : $DISTRO"
echo "Kernel       : $KERNEL"
echo "Current User : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "System Uptime: $UPTIME"
echo "Current Date : $CURRENT_DATE"
echo "--------------------------------------------------"
echo "License Note : The core of this Operating System (Linux) is governed by the GNU General Public License v2 (GPLv2), which guarantees your freedom to run, study, share, and modify the software."
echo "=================================================="
