#!/bin/bash
#======================================
#Script - User Interative
#======================================
clear
echo "Digete seu primeiro nome:"
read FIRSTNAME
echo ""
echo "Digite o seu sobrenome:"
read LASTNAME
echo ""
echo "Seu nome completo é: $FIRSTNAME $LASTNAME"
echo ""
echo "Digite sua idade:"
read AGE
echo "Em 10 anos você estará com `expr $AGE + 10` anos."