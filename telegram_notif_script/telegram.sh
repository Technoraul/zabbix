#!/bin/bash

token='{token}'
chat="$1"
subj="$2"
message="$3"

/usr/bin/curl -s --header 'Content-Type: application/json' --request 'POST' --data "{\"chat_id\":\"${chat}\",\"text\":\"${subj}\n${message}\"}" "https://api.tlgr.org/bot${token}/sendMessage"



### Place here token='{token}' and here bot${token} ID of your bot
