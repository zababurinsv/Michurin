#!/bin/bash

f=`find . -name \*.html -or -name \*.htm`

for file in $f

do

iconv -f KOI8-R -t UTF8 $file -o tmpfile && mv tmpfile $file

done

wget —mirror -p —convert-links -P