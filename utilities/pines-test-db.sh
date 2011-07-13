#!/bin/bash
# 
# Chris Sharp <csharp@georgialibraries.org> 
# Copyright 2011 Georgia Public Library Service
# 
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
# A script to install the PINES database on a test instance.  It presumes that
# your site follows the Continuous Backup and PITR procedures detailed in the 
# PostreSQL documentation: 
# 
# http://www.postgresql.org/docs/8.4/static/continuous-archiving.html
#
#
# define some variables
# our working directory - place the script where you want everything to happen
WORK_DIR=`pwd`
# the URL from which we download Evergreen
EG_SRC_URL="http://evergreen-ils.org/downloads/"
EG_VERSION="Evergreen-ILS-1.6.1.8"
EG_SRC="$EG_VERSION.tar.gz"
EG_SRC_DIR="$WORK_DIR/$EG_VERSION"
# the make target for the standalone database server
TARGET="install_pgsql_server_debs_84"
# the server that holds our snapshot
ARCHIVE_HOST="example-host.org"
ARCHIVE_USR="root"
ARCHIVE_DIR="/mnt/pinesdata/"
ARCHIVE_SNAPSHOT_DIR="$ARCHIVE_DIR/snapshot"
ARCHIVE_WAL_DIR="$ARCHIVE_DIR/wal"
SNAPSHOT_DATE="2011-06-14"
SNAPSHOT="gapines-prod-backup-"$SNAPSHOT_DATE"T"$SNAPSHOT_DATE".cpio.gz"
# where the snapshot is copied
DATA_DIR="$WORK_DIR/pinesdata"
SNAPSHOT_DIR="$DATA_DIR/snapshot"
# this script presumes PG 8.4 on Debian
PG_VERSION="8.4"
PG_HOME="/home/postgres"
PG_DATA_DIR="/var/lib/postgresql/$PG_VERSION/main/"
PG_FILES_DIR="/usr/share/postgresql/$PG_VERSION/"

# Start with a vanilla install of Debian squeeze...
# run as root
[ $(whoami) != 'root' ] && echo 'Must run as root' && exit;

# make sure we're as fresh as can be
apt-get update && apt-get dist-upgrade

# install some goodies
apt-get install vim build-essential git

# download and extract the Evergreen source, then install server prereqs
wget $EG_SRC_URL/$EG_SRC
tar xzf $EG_SRC
cd $EG_SRC_DIR
make -f Open-ILS/src/extras/Makefile.install $TARGET

# install the additional prerequisites
apt-get install gcc libmarc-charset-perl
cpan JSON::XS
cpan MARC::Record
cpan MARC::File::XML

# stop postgres
/etc/init.d/postgresql stop

# create the postgres home directory and assign it to postgres
mkdir $PGHOME
usermod -d $PGHOME postgres

# copy over the data from the archive
if [ ! -d "$DATA_DIR" ]; then
	mkdir $DATA_DIR
fi
if [ ! -d "$SNAPSHOT_DIR" ]; then
	mkdir $SNAPSHOT_DIR
fi
if [ ! -d "$WAL_DIR" ]; then
	mkdir $WAL_DIR
fi

scp $ARCHIVE_USR@$ARCHIVE_HOST:/$ARCHIVE_SNAPSHOT_DIR/$SNAPSHOT $SNAPSHOT_DIR

# we copy the wal to postgres's home so the recovery command can access it
rsync -av $ARCHIVE_USR@$ARCHIVE_HOST:/$ARCHIVE_WAL_DIR $PG_HOME
chown -R postgres:postgres $PG_HOME

# remove the default postgres data files and extract the snapshot into the data directory
rm -rf $PG_DATA_DIR/*
cd $PG_DATA_DIR && zcat $SNAPSHOT_DIR/$SNAPSHOT | cpio -idv
mkdir $PG_DATA_DIR/pg_xlog # required directory for recovery command to work
chown -Rh postgres:postgres $PG_DATA_DIR/* # restore ownership to postgres
chown -h root:root $PG_DATA_DIR/server.* # except for the symlinks to the certs


# as postgres, bunzip2 the wal files
su - postgres -c "bunzip2 -v $PG_HOME/wal/*.bz2"

# copy over the recovery.conf to the data directory
su - postgres -c "cp $PG_FILES_DIR/recovery.conf.sample $PG_DATA_DIR/recovery.conf"
# substitute the default recovery command with the correct one
# FIXME su - postgres -c "sed -i s^\#restore_command = \'cp /mnt/server/archivedir/%f %p\'^restore_command = \'cp /home/postgres/wal/%f %p\'^" "$PG_DATA_DIR/recovery.conf"
# open recovery.conf for editing, since we can't get sed to work...
su - postgres -c "vim $PG_DATA_DIR/recovery.conf"

# start postgres
/etc/init.d/postgresql start
