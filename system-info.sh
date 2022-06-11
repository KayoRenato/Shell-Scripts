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

# Examples
# echo -e "The colors are: ${red}red${clear}, ${green}green${clear}, ${yellow}yellow${clear}, ${blue}blue${clear}, ${magenta}magenta${clear} and ${cyan}cyan${clear}!"


echo "(Início)"
# echo "=================================================================================================="
echo -e "${alert}                        Hostname Information                        ${clear}"
echo ""
echo -e "${green} $(Hostname) ${clear}"
echo ""

echo -e "${alert}                    File System Disk Space Usage                    ${clear}"
echo ""
echo -e "${cyan} $(df -H) ${clear}"

echo ""

echo -e "${alert}                        Free and Used Memory                        ${clear}"
echo ""
USEDMEM=$(top -l 1 | grep PhysMem: | awk '{print $2}')
FREEMEM=$(top -l 1 | grep PhysMem: | awk '{print $6}')
echo -e "Free Memory: ${green} $FREEMEM ${clear}"
echo -e "Used Memory: ${red} $USEDMEM ${clear}"
echo ""

echo -e "${alert}                       System Uptime and Load                       ${clear}"
echo ""
echo -e "${cyan} $(uptime) ${clear}"
echo ""

echo -e "${alert}                      Currently Logged-in Users                     ${clear}"
echo ""
echo -e "${green} $(whoami) ${clear}"
echo ""

echo -e "${alert}                  Top 5 Memory-Consuming Processes                  ${clear}"
echo ""
echo -e "${red} $(ps -e -o pid,%mem,%cpu,comm -m | head -n 6 ) ${clear}"
echo ""