#!/bin/bash
#GITHUB: wendbandeira@gmail.com
#17-10-2019

FILE=$2$3$4.call

if [ -f "$FILE" ]; then
    echo "$FILE exist"
else 
    echo Channel: khomp/*b0c3-8/$2$3 >> $2$3$4.call
	echo MaxRetries: 1 >> $2$3$4.call
	echo RetryTime: 30 >> $2$3$4.call
	echo WaitTime: 30 >> $2$3$4.call
	echo Context: from-internal >> $2$3$4.call
	echo Priority: 1 >> $2$3$4.call
	echo Extension: $4 >> $2$3$4.call
fi