#!/bin/sh

if [ -z $1 ]
then
    echo "Please provide the directory name in /home/mike/source/ to clean."
    exit 1
fi

(cd /home/mike/source/$1; rm -rf $(ls | grep -v bin$) .nant)
(cd /home/mike/source/$1/bin; rm -rf $(ls | grep -v xml$ | grep -v ini$ | grep -v ^Regions | grep -v ^j2kDecodeCache))
