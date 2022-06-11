#!/bin/bash
#================================================================
#Script - Copy files from specific directory and backup
#================================================================
clear
echo "(Início)"
echo "=================================================================================================="
echo ""
dateFormat=$(date +"%d-%h-%y-%Hh%M")
PATH_SRC=$(pwd)
echo "Diretório Fonte: $PATH_SRC "
PATH_DST="$PATH_SRC/backup_$dateFormat"

if [ -d "$PATH_DST" ]; then
    echo "O Diretório Destino \"Backup\" já existe."
else 
    mkdir $PATH_DST
    echo "O Diretório Destino \"Backup\" foi criado."
fi

echo "Diretório Destino: $PATH_DST" 


echo ""
echo "=================================================================================================="
for file_src in $PATH_SRC/*.sh; do
    file_dst="$PATH_DST/$(basename $file_src | sed "s/^\(.*\)\.\(.*\)/\1_$dateFormat.\2/")"
    cp "$file_src" "$file_dst"
    echo cp "$(basename $file_src)" to "$file_dst"
done
echo "=================================================================================================="
echo "(Fim)"
