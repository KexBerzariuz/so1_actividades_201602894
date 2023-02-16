#!/bin/bash
echo "hello world!"

Dia=$(date)
Dias=$(date "+%d")
Ano="2023"
Mes="02"
FechaActual="${Ano}-${Mes}-${Dias}"

usuario=$(curl "https://api.github.com/users/kexberzariuz" | jq .login)
identificador=$(curl "https://api.github.com/users/kexberzariuz" | jq .id)
creada=$(curl "https://api.github.com/users/kexberzariuz" | jq .created_at)
echo $usuario
echo $creada
echo $identificador
##mkdir /tmp/$FechaActual
cat  > /tmp/$FechaActual/saludos.log  <<< "hola ${usuario}. User ID: ${identificador} que fue creada en ${creada}"

exit 