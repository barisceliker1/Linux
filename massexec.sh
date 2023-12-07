#!/bin/bash

if [ -z "$dirpath" ]; then
        dirpath=$(pwd)
echo  $dirpath
fi

mask='*.txt'
echo $mask
for i in $mask; do
    #echo data>>$dirpath/$i
    echo  $i
    date>>$i
done



