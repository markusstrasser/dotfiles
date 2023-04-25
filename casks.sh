#!/bin/bash

# Install Homebrew if it's not already installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew
brew update
brew upgrade

APPS=(
    1password
    brave-browser
    cheatsheet
    cleanshot
    cleanmymac
    daisydisk
    deluge
#   docker
    expressvpn
#   firefox
    gpg-suite
    google-chrome
    httpie
    iterm2
    postman
    raycast
    readdle-spark
#   roam-research #--not using this anymore
    signal
    skype
    sensiblesidebuttons
    spotify
    telegram
#   the-unarchiver
    tor-browser
    transmit
    typora
    visual-studio-code
    vlc
    zoom
)

for app in "${APPS[@]}"; do
    brew install --cask "$app" || true
done

brew cleanup

echo "Installation complete!"
