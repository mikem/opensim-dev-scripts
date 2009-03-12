#!/bin/bash

if [ -z $1 ]
then
    echo "Please provide the directory name in /home/mike/source/ from which to rebuild."
    exit 1
fi

cd /home/mike/source/$1
ctags -R --tag-relative=yes -f ~/.vim/tags/opensim.tags
