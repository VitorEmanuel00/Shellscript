#!/bin/bash
#######################################################################################
#Script Name    :alerta.sh
#Description    :send alert mail when XYZ portal doesn't return 200
#Args           :
#Author         :Vitor Emanuel Santos Lima
#Email          :veslima3@gmail.com
#License       : GNU GPL-3
#######################################################################################

##filtrar o codigo 200

OK=$(curl https://portal.ifba.edu.br/ -I | awk {'print $2'} | grep '200')

if[[ "$OK" -ne 200]] then

echo “Acorda pivete, deu ruim.” | mail -s “A casa caiu, ” veslima3@gmail.com

fi


exit 0
