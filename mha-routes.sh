#!/bin/bash

DATA=$(find . -name "*.mha")
echo ${DATA} > ./codes/routes.txt
if [[ "${?}" -ne 0 ]]
then
    echo 'File could not be read' >&2
    exit 1
fi
FILE=$(cat ./codes/routes.txt)
echo ${FILE// /,} > ./codes/routes.txt
exit 0
#echo "${DATA}" >> /data/routes.txt