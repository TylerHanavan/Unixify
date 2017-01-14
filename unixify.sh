#! /bin/bash

which dos2unix

if [ "$?" -ne 0 ] ; then
  apt-get -y install dos2unix
fi

IFS='\n'
readarray -t array <<< "$(ls | grep -v -e 'unixify.sh')"

for element in "${array[@]}"
do
    dos2unix "$element"
done
