#! /usr/bin/env bash

#navigeer naar gegeven directory
cd $1

#convert jpg naar een 128x128 png
convert -scale 128x128 *.jpg converted.png

