#!/usr/bin/env fish


#test

# Install Fisher and plugins
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher install jorgebucaran/nvm.fish
fisher install PatrickF1/fzf.fish
fisher install jorgebucaran/bax.fish
fisher install oh-my-fish/theme-agnoster

# Enable syntax highlighting
fisher install ilancosman/tide
fisher install jorgebucaran/fish-git-util

# Enable autosuggestions
fisher install jorgebucaran/fish-autosuggestions

# Enable history substring search
fisher install jethrokuan/z

# Define the local and default config.fish file paths
set LOCAL_CONFIG_FISH "config.fish"
set DEFAULT_CONFIG_FISH "$HOME/.config/fish/config.fish"

# Check if the default config.fish file exists
if not test -e $DEFAULT_CONFIG_FISH
    # If it doesn't exist, copy the local config.fish file to the default directory
    cp $LOCAL_CONFIG_FISH $DEFAULT_CONFIG_FISH
else
    # If it exists, print a message and do nothing
    echo "config.fish already exists in $DEFAULT_CONFIG_FISH"
end
