#!/bin/bash

# Help
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
  echo 'Usage: post_message_to_teams_channel.sh "<title>" "<message>"'
  exit 0
fi

# Webhook URL
WEBHOOK_URL="paste_your_webhook_url_here"

# Title
TITLE=$1
if [[ "${TITLE}" == "" ]]
then
  echo "No title specified."
  exit 1
fi

# Text
MESSAGE=$2
if [[ "${MESSAGE}" == "" ]]
then
  echo "No message specified."
  exit 1
fi

# Convert formating.
MESSAGE=$( echo ${MESSAGE} | sed 's/"/\"/g' | sed "s/'/\'/g" )
JSON="{\"title\": \"${TITLE}\", \"text\": \"${MESSAGE}\" }"

# Post to Microsoft Teams.
curl -H "Content-Type: application/json" -d "${JSON}" "${WEBHOOK_URL}"
