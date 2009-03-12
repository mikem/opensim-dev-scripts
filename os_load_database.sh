#!/bin/bash

if [ -z $1 ]
then
    echo "Please provide the database name."
    exit 1
fi

if [ -z $2 ]
then
    echo "Please provide the database dump filename."
    exit 1
fi

/home/mike/bin/os_clean_database.sh $1

mysql -u root $1 < $2

echo "Use this RegionUUID:" $(dashify_uuid.sh $(mysql -u root $1 -e "SELECT DISTINCT RegionUUID FROM prims" | grep -v RegionUUID))
