#!/bin/zsh

if ! [ $# -eq 3 ]; then
	echo "Usage: $0 [directory] [software input] [model input]"
	exit 1
fi

echo "Updating raw metadata ..."
echo "Directory: $1"
echo "Software: $2"
echo "Model: $3"

for file in $1/*; do 
       	echo "$file";
	exiftool -overwrite_original -software="$2" -model="$3" "$file"
done

