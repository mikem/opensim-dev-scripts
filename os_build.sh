#!/bin/bash

if [ -z $1 ]
then
    echo "Please provide the directory name in /home/mike/source/ from which to sync."
    exit 1
fi

if [ -z $2 ]
then
    echo "Please provide the directory name in /home/mike/source/ in which to build."
    exit 1
fi

os_rsync_source.sh $1 $2

cd /home/mike/source/$2/

# find the Prebuild executable
if [ -e bin/Prebuild.exe ]
then
    prebuild_bin=bin/Prebuild.exe
elif [ -e Prebuild.exe ]
then
    prebuild_bin=Prebuild.exe
else
    echo "Prebuild.exe not found! Exiting."
    exit 1
fi

mono $prebuild_bin /target nant
nant
