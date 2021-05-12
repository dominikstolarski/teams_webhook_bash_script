# bash script for sending message to MS Teams channel via webhook

## Setup in MS Teams channel:
1. Choose More options (⋯) next to the channel name and then choose Connectors.
2. Select Incoming Webhook, and choose Add.
3. Enter a name for the webhook, upload an image and choose Create.
4. Copy the webhook URL.
Source: https://docs.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/connectors-using

## how to use script:
./post_message_to_teams_channel.sh "title" "message"
