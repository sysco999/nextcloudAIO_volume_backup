#!/bin/bash

# Define source directories and destination path
SOURCES=("/var/lib/docker/volumes/nextcloud_aio_nextcloud" "/var/lib/docker/volumes/nextcloud_aio_database" "/var/lib/docker/volumes/nextcloud_aio_database_dump" "/var/lib/docker/volumes/nextcloud_aio_nextcloud_data" "/var/lib/docker/volumes/nextcloud_aio_apache" "/var/lib/docker/volumes/nextcloud_aio_mastercontainer" "/var/lib/docker/volumes/nextcloud_aio_redis" )
DESTINATION="/mnt/sdb/data/nextcloud_backup"

# Create the destination directory if it doesn't exist
mkdir -p $DESTINATION

# Loop through each source directory and back it up to the destination
for SOURCE in "${SOURCES[@]}"
do
    # Run rsync to perform an incremental backup
    /usr/bin/rsync -av --delete $SOURCE/ $DESTINATION
done
