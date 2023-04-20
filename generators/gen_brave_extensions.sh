#!/bin/bash

#! STILL BUGGY
# Set the path to the Brave's extension directory using $HOME instead of ~
EXTENSIONS_DIR="~/Library/Application\ Support/BraveSoftware/Brave-Browser/Default/Extensions/"

# Create an array to store extension IDs and names
extensions=()

# Check if the extensions directory exists
if [ -d "$EXTENSIONS_DIR" ]; then
    # Loop through the extension directories and extract the extension IDs and names
    for ext_dir in "$EXTENSIONS_DIR"/*; do
        # Extract the extension ID (directory name)
        extension_id="${ext_dir##*/}"

        # Find the manifest.json file in the version subdirectory
        manifest_file=$(find "$ext_dir" -name manifest.json -type f | head -1)

        # Extract the extension name from the manifest.json file
        extension_name=$(jq -r '.name' "$manifest_file")

        # Append the extension ID and name to the array
        extensions+=("$extension_id # $extension_name")
    done

    # Generate the Bash script
    cat >reinstall-brave-extensions.sh <<EOF
#!/bin/bash

# List of extension IDs and names
extensions=(
$(printf "    '%s'\n" "${extensions[@]}")
)

# Open each extension's Chrome Web Store URL in Brave
for ext_info in "\${extensions[@]}"; do
    ext_id="\${ext_info%% #*}"
    brave "https://chrome.google.com/webstore/detail/\$ext_id"
done
EOF

    # Make the generated script executable
    chmod +x reinstall-brave-extensions.sh

    # Output the path to the generated script
    echo "The script to reinstall Brave extensions has been generated: reinstall-brave-extensions.sh"
else
    echo "The Brave extensions directory was not found. Please check the path to the extensions directory."
fi
