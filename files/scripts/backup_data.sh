#!/bin/bash
# `set -e` deliberately not done until later
cd /mc/

container="mc"

docker exec $container rcon-cli save-off
docker exec $container rcon-cli save-all
echo "Sleeping so that the save will be done"
sleep 4

if [[ -d wip ]]; then
	echo "wip exists!"
	exit 1
fi

echo "Make backup"
cp -r data wip
echo "Backup done"

docker exec $container rcon-cli save-on

set -e

echo "Removing junk"
rm -r wip/minecraft_server*.jar wip/logs

dest="backups/d/$(date +%s)"
echo "Move to $dest"
mv wip "$dest"

echo "Before"
du -sh backups/d/*

echo "Deduping"
fdupes -rL backups/d > /dev/null

echo "After"
du -sh backups/d/*
