#!/bin/bash
TIMESTAMP=$(date +%m_%d_%Y__%T)
echo
echo use CTRL+D to stop writing and show statistics about this session.
echo
fold -s - > JUST_WRITE_$TIMESTAMP.txt
echo
echo -n WORDS WRITTEN: && wc -w < JUST_WRITE_$TIMESTAMP.txt
echo
echo -n TIME SPENT WRITING: && date -d@$SECONDS -u +%H:%M:%S
echo
echo FILE SAVED AT ./JUST_WRITE_$TIMESTAMP.txt
