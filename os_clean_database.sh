#!/bin/bash

if [ -z $1 ]
then
    echo "Please provide the database name to be cleaned."
    exit 1
fi

echo "Dropping all tables in $1!"
mysqldump -u root --add-drop-table --no-data OpenSim | grep ^DROP | mysql -u root $1
