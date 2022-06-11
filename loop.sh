#!/bin/bash
#======================================
#Script - Loop Array
#======================================
clear
SERVERLIST=("websrv01" "websrv02" "websrv03" "websrv04" "websrv05")
COUNT=0

for INDEX in ${SERVERLIST[@]}; do 
echo "Servido: ${SERVERLIST[COUNT]}"
COUNT="`expr $COUNT+1`"
done
