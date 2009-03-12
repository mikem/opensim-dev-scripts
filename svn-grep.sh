#!/bin/sh

path="."

if [ $# -gt 1 ]
then
    path=$1
    shift
fi

grep --exclude-dir=\.svn --color=auto -r "$@" $path/*
