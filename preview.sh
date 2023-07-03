#!/bin/bash

# Get the current directory
current_dir=$(pwd)
set +x
gif_file="$current_dir/disappointed-fan.gif"
filename=$(basename "$gif_file")
filename="${filename%.*}"
convert "$gif_file[0]" "$filename.png"
echo "Extracted 0 frame from '$gif_file' and saved as $filename.png"
