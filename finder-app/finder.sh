#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Error: Incorrect number of arguments."
	echo "Usage: $0 <filesdir> <searchstr>"
	exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
	echo "Error: '$filesdir' is not a valid directory"
	exit 1
fi

file_count=$(find "$filesdir" -type f 2>/dev/null | wc -l)
match_count=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $file_count and the number of matching lines are $match_count"

exit 0
