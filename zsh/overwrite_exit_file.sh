#!/bin/zsh

if ! [ $# -eq 3 ]; then
	echo "Usage: $0 [filename] [software input] [model input]"
	exit 1
fi

echo "Updating raw metadata ..."
echo "File: $1"
echo "Software: $2"
echo "Model: $3"

exiftool -overwrite_original -software="$2" -model="$3" "$1"

