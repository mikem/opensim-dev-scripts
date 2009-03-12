#!/bin/sh

if [ -z $1 ]
then
    echo "Please provide the directory name in /home/mike/source/ from which to build the docs."
    exit 1
fi

cd /home/mike/source/$1/doc
doxygen doxygen.conf
rm -rf /home/mike/source/docs/html
mv html /home/mike/source/docs
