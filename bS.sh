#!/bin/bash

# while read line
# do
# echo $line
# done < datosJS.txt

# read -sp  "Que contraseña quieres " pssw
# echo -e "\n$pssw"

# content=$(curl -L etayoluthier.com)
# $content > paginaW.txt

curl etayoluthier.com--mirror -p --convert-links -P ./LOCAL-DIR WEBSITE-URL
