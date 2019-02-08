#!/bin/bash
set -e
cd $(dirname $0)

echo "uptimepusher.sh start $(date)"

# TODO build an image with this preinstalled
apt update && apt install -y curl

title="Minecraft"

echo "HI"
./push.sh "$title" "Server is up! :D"

hour() {
	sleep 3600
}
hour10() {
	for r in {1..10}; do hour; done
}
upper() {
	echo "Going to push for $1 hours"
	./push.sh "$title" "Server has been up for $1 hour(s)"
}

hour
upper 1
hour
upper 2
hour
upper 3
hour
upper 4
hour
upper 5
hour
upper 6
hour
upper 7
hour
upper 8
hour
hour
upper 10
hour
hour
hour
hour
upper 14
hour
hour
hour
hour
hour
hour
upper 20
hour10
upper 30
hour10
upper 40
hour10
upper 50
hour10
upper 60
hour10
hour10
hour10
hour10
upper 100
