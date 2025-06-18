#!/bin/bash

# Check if a file is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

# Count occurrences of "http://" and "https://"
http_count=$(grep -o "http://" "$filename" | wc -l)
https_count=$(grep -o "https://" "$filename" | wc -l)

echo "Occurrences of 'http://': $http_count"
echo "Occurrences of 'https://': $https_count"
