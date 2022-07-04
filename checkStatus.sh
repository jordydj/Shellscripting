#! /usr/bin/env bash


[ -f $3 ] && rm -f $3
touch $3

for file in $1/* ;
do
    if ("$2" "$file"); then
        echo $file "Test was a succes" >> $3
    else 
        echo $file "Test failed" >> $3
fi
done
