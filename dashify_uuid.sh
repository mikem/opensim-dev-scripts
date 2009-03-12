#!/bin/sh

if [ -z $1 ]
then
    echo "Please provide the undashed UUID."
    exit 1
fi


echo "$(echo $1 | cut -c 1-8)-$(echo $1 | cut -c 9-12)-$(echo $1 | cut -c 13-16)-$(echo $1 | cut -c 17-20)-$(echo $1 | cut -c 21-32)"
