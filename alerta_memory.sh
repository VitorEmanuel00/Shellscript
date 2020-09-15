#!/bin/bash
#######################################################################################
#Script Name    :alerta.sh
#Description    :send alert mail when XYZ database usage is greater than 89%
#Args           :
#Author         :Vitor Emanuel Santos Lima
#Email          :veslima3@gmail.com
#License       : GNU GPL-3
#######################################################################################

##filtrar o codigo porcentagem

consumo=$(df -h | grep -i -A 1 oracle  | awk {'print $4'} | cut -d% -f1)

if[[ "$consumo" -gt 89]] then

echo “Acorda pivete, deu ruim.” | mail -s “A casa caiu.” veslima3@gmail.com

fi


exit 0
