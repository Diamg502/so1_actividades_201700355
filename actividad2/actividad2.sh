#!/bin/bash

#Url
name="https://api.github.com/users/"

#ubicacion
ubi="$(pwd)"
logx="datosgit.log"
fecha=$(date)

path="$ubi/$fecha/"

#pedir el dato al usuario github
echo 'Introduzca el usuario de github:'
#leer el dato del teclado y guardarlo en la variable de usuario var1
read -r GITHUB_USER
#Mostrar el valor de la variable de usuario
echo "Usuario github: $GITHUB_USER"
#Unimos Usuario y URL
unido=$name$GITHUB_USER
echo "$unido"

idgit=$(curl -s "$unido" | jq ."id") 
createdat=$(curl -s "$unido" | jq ."created_at") 

logfile="hola $GITHUB_USER, ID: $idgit, Cuenta fue creada el: $createdat"
echo "$logfile"

#nuevaruta
mkdir "$path"

logger -s "$logfile" > "$path$logx"
echo "$logfile" >> "$path$logx"

echo ---------Fin del script.-------------
