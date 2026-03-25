#!/bin/bash
# =============================================================================
# Script 1: System Identity Report
# Author: [Your Name] | Roll: [Your Roll Number]
# Course: Open Source Software (NGMC) | OSS Capstone Project
# Software Audited: Git
# Description: Displays a welcome screen with system info and Git license details
# =============================================================================

# --- Student Info Variables ---
STUDENT_NAME="[Your Name]"         # Replace with your name
ROLL_NUMBER="[Your Roll Number]"   # Replace with your roll number
SOFTWARE_CHOICE="Git"

# --- Gather System Information using command substitution $() ---
DISTRO=$(cat /etc/os-release | grep -w "PRETTY_NAME" | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)                          # Kernel version
ARCH=$(uname -m)                            # System architecture
USER_NAME=$(whoami)                         # Current logged-in user
HOME_DIR=$HOME                              # Home directory of current user
UPTIME=$(uptime -p)                         # Human-readable uptime
CURRENT_DATE=$(date '+%A, %d %B %Y')        # Formatted current date
CURRENT_TIME=$(date '+%H:%M:%S %Z')         # Current time with timezone
HOSTNAME=$(hostname)                        # System hostname

# --- Git-specific info using command substitution ---
GIT_VERSION=$(git --version 2>/dev/null || echo "Git not installed")
GIT_PATH=$(which git 2>/dev/null || echo "Not found")

# --- License info for Git ---
GIT_LICENSE="GNU General Public License version 2 (GPLv2)"
LICENSE_MEANING="You are free to run, study, modify, and distribute Git freely."

# --- Display the Welcome Banner ---
echo "============================================================"
echo "         OPEN SOURCE AUDIT — SYSTEM IDENTITY REPORT        "
echo "============================================================"
echo ""
echo "  Student  : $STUDENT_NAME"
echo "  Roll No  : $ROLL_NUMBER"
echo "  Software : $SOFTWARE_CHOICE"
echo ""
echo "------------------------------------------------------------"
echo "                    SYSTEM INFORMATION                     "
echo "------------------------------------------------------------"
echo ""
echo "  Hostname         : $HOSTNAME"
echo "  Distribution     : $DISTRO"
echo "  Kernel Version   : $KERNEL"
echo "  Architecture     : $ARCH"
echo ""
echo "  Logged-in User   : $USER_NAME"
echo "  Home Directory   : $HOME_DIR"
echo ""
echo "  System Uptime    : $UPTIME"
echo "  Current Date     : $CURRENT_DATE"
echo "  Current Time     : $CURRENT_TIME"
echo ""
echo "------------------------------------------------------------"
echo "                  GIT SOFTWARE INFORMATION                 "
echo "------------------------------------------------------------"
echo ""
echo "  Git Version      : $GIT_VERSION"
echo "  Git Binary Path  : $GIT_PATH"
echo "  Git Config File  : $HOME/.gitconfig"
echo ""
echo "------------------------------------------------------------"
echo "                  LICENSE INFORMATION                      "
echo "------------------------------------------------------------"
echo ""
echo "  Git is licensed under:"
echo "  $GIT_LICENSE"
echo ""
echo "  What this means for you:"
echo "  $LICENSE_MEANING"
echo ""
echo "  The Four Freedoms granted by GPLv2:"
echo "    [1] Freedom to RUN Git for any purpose"
echo "    [2] Freedom to STUDY Git's source code"
echo "    [3] Freedom to REDISTRIBUTE copies of Git"
echo "    [4] Freedom to DISTRIBUTE your modified versions"
echo ""
echo "  Fun Fact: Linus Torvalds built Git in just 10 days in"
echo "  April 2005, after BitKeeper revoked its free license."
echo ""
echo "============================================================"
echo "         End of System Identity Report"
echo "============================================================"
