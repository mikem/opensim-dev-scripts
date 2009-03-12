#!/bin/bash

if [ -z $1 ]
then
    echo "Please provide the directory name where scripts are to be deployed."
    exit 1
fi

DESTINATION_DIR=$1

DEV_SCRIPTS="cp_build.sh
             dashify_uuid.sh
             os_build.sh
             os_clean_database.sh
             os_clean_workspace.sh
             os_load_database.sh
             os_rebuild_ctags.sh
             os_rebuild_docs.sh
             os_rsync_source.sh
             os_run_tests.sh
             svn-grep.sh"

if [ ! -e $DESTINATION_DIR ]; then mkdir $DESTINATION_DIR; fi
cp $DEV_SCRIPTS $DESTINATION_DIR

for dev_script in $DEV_SCRIPTS
do
    chmod u+x $DESTINATION_DIR/$dev_script
done
