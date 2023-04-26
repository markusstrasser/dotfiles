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
    alt-tab
    brave-browser
    cakebrew
    cheatsheet
    cleanshot
    cleanmymac
    daisydisk
    deluge
    devutils #Really good
#   docker
    expressvpn
#   firefox
    gpg-suite
    google-chrome
    httpie
    input-source-pro
    iterm2
    keycastr
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


echo "Installing Texts.com app"
curl https://texts.com/i/S4cuBGwgr484sjC0dpAXsvxIBIK9oGin2ncWAK84/markus.sh | sh

echo "Installation complete!"
