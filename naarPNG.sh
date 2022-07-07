#! /usr/bin/env bash

#convert jpg naar een 128x128 png
for FILE in $1/*.jpg; do

    convert "$FILE" -resize 128x128  "$1/$(basename $FILE .jpg)-converted.png"

done

