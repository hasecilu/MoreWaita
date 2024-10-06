#!/bin/bash

# Directory containing the SVG files
SVG_DIR="./places/scalable"

# Iterate over all SVG files in the directory
for file in "$SVG_DIR"/*.svg; do
	# Extract the filename without the directory path
	filename=$(basename "$file")

	# Remove the file extension (.svg)
	base_name="${filename%.*}"

	# Remove the "folder-" prefix from the base name
	clean_name="${base_name#folder-}"

	# Generate the markdown line
	echo "![icon]($SVG_DIR/$filename \"$clean_name\")"
done
