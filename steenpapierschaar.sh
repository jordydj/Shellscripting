#! /usr/bin/env bash

echo "speler 1 maak een keuze:"
read -s player1

array=("steen" "papier" "schaar")

player2=$(( $RANDOM % 3 ))
echo ${array[$player2]}

if [[ $player1 == ${array[$player2]} ]]; then
    echo "Gelijkspel"
elif [[ $player1 ==  "steen" && ${array[$player2]} == "schaar" ]]; then
    echo "Player 1 Wint"
elif [[ $player1 == "schaar" && ${array[$player2]} == "steen" ]]; then
    echo "Player 2 Wint"
elif [[ $player1 == "schaar" && ${array[$player2]} == "papier" ]]; then
    echo "Player 1 Wint"
elif [[ $player1 == "papier" && ${array[$player2]} == "schaar" ]]; then
    echo "Player 2 Wint"
elif [[ $player1 == "papier" && ${array[$player2]} == "steen" ]]; then
    echo "Player 1 Wint"
elif [[ $player1 = "steen" && ${array[$player2]} == "papier" ]]; then
    echo "Player 2 Wint"
else
    echo "error"
fi
