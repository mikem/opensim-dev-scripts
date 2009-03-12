#!/bin/sh

grep --exclude-dir=\.svn --color=auto -r "$@" *
