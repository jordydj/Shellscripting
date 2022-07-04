#! /usr/bin/env bash

#zet pattern matching aan
shopt -s extglob 

case $1 in
*.py)
python3 $1
;;

*.sh)
bash $1
;;

*.cc)
cat $1
;;

*)
echo "dit type file word niet ondersteunt"
;;

esac