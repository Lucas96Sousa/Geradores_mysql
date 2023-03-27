#!/bin/bash 

echo "GERANDO TELEFONES "
x=1
while [ $x -le 13 ]
do
#Gerando telefones
ddd=$(shuf -i 11-89 -n 1)

#gerando 1 bloco de 3 digitos do telefone com o 9
sec=$(shuf -i 10000000-99999999 -n 1) 

  echo "$ddd9$sec$third" | csvlook

  x=$(($x +1))
done

#######################################################
#GERANDO CPF'S
echo "GERANDO CPF"
y=1
while [ $y -le 13 ]
do
  cpf1=$(shuf -i 100000000-999999999 -n 1)
  cpf2=$(shuf -i 10-99 -n 1)
  echo "$cpf1-$cpf2" | csvlook
  y=$(($y +1))
done

