#!/bin/bash

if [ $# -ne 2 ];then
	echo "Error: Incorrect number of arguments."
	echo "Usage: $0 <writefile> <writestr>"
	exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"

echo "$writestr" > "$writefile"

if [ ! -f "$writefile" ]; then
    echo "Error: File could not be created: $writefile"
    exit 1
fi

exit 0
