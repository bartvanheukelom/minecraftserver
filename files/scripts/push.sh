#!/bin/bash
. "$(dirname $0)/pushcreds.env"
curl --request POST \
  --url https://api.pushover.net/1/messages.json \
  --header 'content-type: application/x-www-form-urlencoded' \
  --data-urlencode "token=$PUSHOVER_TOKEN" \
  --data-urlencode "user=$PUSHOVER_USER" \
  --data-urlencode "title=$1" \
  --data-urlencode "message=$2"
