#!/bin/bash
# ============================================================================
# PINES Customization script
#
# (c) 2011 Georgia Public Library Service
#
# This script will modify and replace files in a default Evergreen 1.6 
# installation to replicate the look and feel of the PINES production cluster.
#
# ============================================================================

# make sure we are root
[ $(whoami) != 'root' ] && echo 'Must run as root or with sudo' && exit;

BASE_DIR=$PWD
FILES_DIR=$BASE_DIR/PINES-files
PATCH_DIR=$BASE_DIR/PINES-Patches
SQL_DIR=$FILES_DIR/sql
PGHOST='localhost'
PGPORT='5432'
PGDATABASE='evergreen'
PGUSER='evergreen'
PGPASSWORD='evergreen'

# copy the PINES files into place
MoveFiles () { 
cd $FILES_DIR
for file in `cat files.list`; do
if [ -e "$file" ]
then
        mv "$file" "$file.$(date +%H%M_%m%d%Y)"
fi
cp "$FILES_DIR/$file" "$file";
done
}

# patch the files
PatchFiles () {
cd $PATCH_DIR
for patch in `ls $PATCH_DIR`; do
patch -p0 < $patch;
done
}

# add in PINES DB entries
SQLFiles () {
cd $SQL_DIR
ordered_file_list=`ls $SQL_DIR`;

# ---------------------------------------------------------------------------
# Import files via psql, warn user on error, suggest abort.
# ---------------------------------------------------------------------------
for sql_file in $ordered_file_list; do
  # It would be wise to turn this on only if confidence is high that errors in
  # scripts will result in terminal failures.  Currently, there are a couple
  # that seem benign.  --asjoyner
  # export ON_ERROR_STOP=1

  export PGHOST PGPORT PGDATABASE PGUSER PGPASSWORD
  # Hide most of the harmless messages that obscure real problems
  if [ -z "$VERBOSE" ]; then
    psql -f $sql_file 2>&1 | grep -v NOTICE | grep -v "^INSERT"
  else
    psql -f $sql_file
  fi
  if [ $? != 0 ]; then
    cat <<EOM
********************************************************************************
* There was an error with a database configuration file:                       *
* $sql_file
* It is very likely that your installation will be unsuccessful because of     *
* this error.  Press Control-C to abort, or press enter to charge ahead.       *
********************************************************************************
EOM
fi
done
}

#MoveFiles
#PatchFiles
SQLFiles

# restart apache
#/etc/init.d/apache2 restart

# restore file ownership to opensrf
#chown -R opensrf:opensrf /openils


#echo "Done." && exit

