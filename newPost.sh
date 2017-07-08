#!/bin/bash

# A script to make a basic new post given a title

if [ "$1" ]; then

DATE=$(date --iso)
DATETIME=$(date --iso=seconds)
TITLE=$(echo "$1" | sed 's/ /-/g')
FILENAME="$DATE-${TITLE}.md"
POST="_posts/$FILENAME"

echo "---" > $POST
echo "layout: post" >> $POST
echo "title: '${1}'" >> $POST
echo "date: '$DATETIME'" >> $POST
echo "author: Nikolay Akatyev and Joshua I. James" >> $POST
echo "categories: [Cyber Peacekeeping, CPK]" >> $POST
echo "modified_time: '$DATETIME'" >> $POST
echo "---" >> $POST

xed $POST &
fi
