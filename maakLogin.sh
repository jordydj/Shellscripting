#! /usr/bin/env bash

read naam
if [ -z "$naam" ]; then
    naam=$(whoami)
fi

echo "wachtwoord:"
read -s wachtwoord

charCountWachtwoord=$(echo $wachtwoord | wc -c)

while [ $charCountWachtwoord -lt 8 ]; do
    echo "Wachtwoord moet langer zijn dan 8 tekens."
    echo "wachtwoord:"
    read -s wachtwoord
    charCountWachtwoord=$(echo $wachtwoord | wc -c)
done

echo "wachtwoord opnieuw:"
read -s wachtwoordcheck

while [ "$wachtwoordcheck" != "$wachtwoord" ]; do
    echo "Wachtwoorden komen niet overeen."
    echo "wachtwoord opnieuw:"
    read -s wachtwoordcheck
done


echo "$naam" >> $1
echo $wachtwoord | md5sum >> $1 