#!/bin/bash

# Directory containing the GIFs
directory="."

# Loop through each GIF file in the directory
for file in "$directory"/*.gif; do
  set +x
  # Get the filename and extension
  filename=$(basename "$file")
  extension="${filename##*.}"

  echo "resizing $file"
  # Resize the GIF proportionally using ImageMagick
  convert "$file" -coalesce -resize 320x -deconstruct "$directory/resized_$filename"

  # Uncomment the line below if you want to overwrite the original file
  mv "$directory/resized_$filename" "$file"
  echo "done."
done
