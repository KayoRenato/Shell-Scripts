#!/bin/bash
#======================================
#Script - Case Options
#======================================
clear
echo ""
echo "======================================"
echo "Escolha uma das opções abaixo"
echo "======================================"
echo ""
echo "1 Laranja"
echo ""
echo "2 Melancia"
echo ""
echo "3 Uva"
echo ""
echo "4 Sair"
echo "Digite um dos números informados antes:"
read USERCHOICE
case $USERCHOICE in 
    1)
        echo "Você escolheu a primeira opção (Laranja).";;
    2)
        echo "Você escolheu a primeira opção (Melancia).";;
    3)
        echo "Você escolheu a primeira opção (Uva).";;
    4)
        echo "Você escolheu sair.";;
esac 
