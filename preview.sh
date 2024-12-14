#!/bin/bash

# Get the current directory
current_dir=$(pwd)
set +x
file="$current_dir/surprised-pikachu.gif"
filename=$(basename "$file")
filename="${filename%.*}"
convert "$file[0]" "$filename.png"
echo "Extracted 0 frame from '$file' and saved as $filename.png"
