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

cd /home/mike/source/$2/
rsync -avz --exclude=\.git* --exclude=\.svn --exclude=\.hg* --exclude=\.swp /home/mike/source/$1/ .
