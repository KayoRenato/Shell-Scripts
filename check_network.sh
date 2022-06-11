#!/bin/bash
#======================================
#Script - Network Check
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

# echo "=================================================================================================="
echo -e "${alert}                        Network Information                        ${clear}"
echo ""



# if []; then

# echo -e "${green} $(tcpdump -D | grep Running | awk '{print $3}' | cut -d']' -f1 | cut -d',' -f1) ${clear}"
# else
# echo -e "${red} $(tcpdump -D | grep Running | awk '{print $3}' | cut -d']' -f1 | cut -d',' -f1) ${clear}"
# fi
# echo ""


# ==================== Network
# ifconfig
# route
# sudo lshw -class network
# mtr <site-url>
# tcpdump -D
# netstat -at


# ==================== Firewall
# ufw




