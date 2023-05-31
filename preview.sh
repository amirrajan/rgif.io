#!/bin/bash

# Get the current directory
current_dir=$(pwd)

set +x
# Loop through each GIF file in the current directory
for gif_file in "$current_dir"/*.gif; do
    # Extract the filename and extension
    filename=$(basename "$gif_file")
    extension="${filename##*.}"
    filename="${filename%.*}"

    # Get the total number of frames
    total_frames=$(identify -format "%n\n" $gif_file | head -1)

    # Calculate the middle frame index
    middle_frame_index=$((total_frames / 2))
    middle_frame_index=${middle_frame_index%.*}

    echo $total_frames
    echo $middle_frame_index

    # Extract the middle frame using ImageMagick's convert command
    convert "$gif_file[$middle_frame_index]" "$filename.png"

    echo "Extracted middle frame from '$gif_file' and saved as '$output_filename'"
done
