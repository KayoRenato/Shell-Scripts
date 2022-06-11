#!/bin/bash
#======================================
#Script - Change MOD Files
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

PATH_SRC=$(pwd)
echo -e "${alert}            Entre com a padrão de permissão para os arquivos            ${clear}"
read MOD

echo ""
echo -e "${alert}                        Change Permissions Files                        ${clear}"
echo ""
for file_src in $PATH_SRC/*.sh; do
    chmod $MOD "$(basename $file_src)"
    echo -e "change ${red}"$(basename $file_src)"${clear} to MOD ${cyan}$MOD${clear}"
done
echo ""
echo "=================================================================================================="
echo ""
ls -la
echo ""
