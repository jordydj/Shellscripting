#! /usr/bin/env bash


#maakt een directory aan
mkdir "/home/jordy/v1eos-practica/shell/Afbeeldingen"
#vind alle jpg en png bestanden en verplaatst deze naar de map sorteerAfbeeldingen
find $1 -iname "*.jpg" -or -iname "*.png" | xargs mv -t /home/jordy/v1eos-practica/shell/Afbeeldingen  
