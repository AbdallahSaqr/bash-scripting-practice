#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source_file destination_file"
    exit 1
fi
src="$1"
dest="$2"
if [ ! -f "$src" ]; then
    echo "Error: Source file '$src' does not exist."
    exit 2
fi
cp "$src" "$dest"
echo "Copied '$src' to '$dest'"
