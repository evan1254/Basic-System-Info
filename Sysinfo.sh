#!/bin/bash
# Basic Script To Gather System Information In RedHat

echo "======== System Information ========"
echo "Hostname: $(hostname)"
echo "OS Version: $(cat /etc/redhat-release)"
echo
echo "========= CPU Information ========="
lscpu | grep -E '^CPU\(s\):|^Model name:'
echo
echo "========= Memory Usage ==========="
free -h | grep -E 'Mem:'
echo
echo "========== Disk Usage ============"
df -h / | grep -v Filesystem
echo "=================================="
