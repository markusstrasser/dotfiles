#!/bin/bash

# Set the path to the VS Code extensions directory
EXTENSIONS_DIR="$HOME/.vscode/extensions"

# Create a script to reinstall extensions on a new machine
REINSTALL_SCRIPT="../code-extensions.sh"

# Initialize the reinstall script with a shebang
echo "#!/bin/bash" >"$REINSTALL_SCRIPT"

# Loop through the extensions directories and extract the extension names
for ext_dir in "$EXTENSIONS_DIR"/*; do
    # Extract the extension name (e.g., "publisher.extension-name-x.y.z" -> "publisher.extension-name")
    extension_name="${ext_dir##*/}"
    extension_name="${extension_name%-*}"

    # Append the install command to the reinstall script
    echo "code --install-extension $extension_name" >>"$REINSTALL_SCRIPT"
done

# Make the reinstall script executable
chmod +x "$REINSTALL_SCRIPT"

# Output the path to the reinstall script
echo "The script to reinstall extensions has been generated: $REINSTALL_SCRIPT"
