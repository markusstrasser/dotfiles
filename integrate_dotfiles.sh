#!/bin/bash

# Find all dotfiles in the current directory that are not directories
DOTFILES=($(find . -maxdepth 1 -type f -name ".*" ! -name "."))

# Loop over each dotfile and copy it to the home directory
for file in "${DOTFILES[@]}"; do
    # Check if the dotfile already exists in the home directory
    if [[ -f "$HOME/$file" ]]; then
        # If it exists, append the contents of the dotfile to the end of the existing file
        cat "$file" >> "$HOME/$file"
        echo "Appended contents of $file to $HOME/$file"
    else
        # If it doesn't exist, copy the file to the home directory
        cp "$file" "$HOME/$file"
        echo "Copied $file to $HOME/$file"
    fi
done
