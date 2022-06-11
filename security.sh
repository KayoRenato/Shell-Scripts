#!/bin/bash
#======================================
#Script - System Info
#======================================
clear
# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
alert='\033[5;31;43m'
# Clear the color after that
clear='\033[0m'

echo "(Início)"
# echo "=================================================================================================="
echo -e "${alert}                        Looking for Files with 777 Permissions                        ${clear}"
echo ""
find . -type f -perm 0777 -exec rm -i {} +;
echo ""

echo -e "${alert}                             Checking File System Usage                               ${clear}"
echo ""
THRESHOLD=80netstat
while read line; do
FILESYSTEM=$(echo $line | awk '{print $1}')
PERCENTAGE=$(echo $line | awk '{print $5}' | cut -d'%' -f1 | cut -d'B' -f1)
USAGE=${PERCENTAGE}

if [ $USAGE -gt $THRESHOLD ]; then
echo -e "The remaining available space in ${red}$FILESYSTEM${clear} is critically low. Used: ${red}$PERCENTAGE %${clear}"
fi

done < <(df -h | grep -vi filesystem)
echo ""
