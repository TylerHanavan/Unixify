#! /bin/bash

IFS='\n'
readarray -t array <<< "$(ls | grep -v -e 'unixify.sh')"

for element in "${array[@]}"
do
    dos2unix "$element"
done
