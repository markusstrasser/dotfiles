#!/bin/bash

# Install Homebrew if it's not already installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew
brew update

APPS=(
    1password
    brave-browser
    cheatsheet
    cold-turkey-blocker
    deluge
    docker
    expressvpn
    firefox
    gpg-suite
    google-chrome
    iterm2
    postman
    raycast
    readdle-spark
    signal
    skype
    sensiblesidebuttons
    spotify
    telegram
    the-unarchiver
    tor-browser
    typora
    visual-studio-code
    vlc
    zoom
)

for app in "${APPS[@]}"; do
    brew install --cask "$app" || true
done

FONTS=(
    font-anonymous-pro
    font-arial
    font-dejavu-sans-mono
    font-fira-code
    font-hack
    font-inconsolata
    font-jetbrains-mono
    font-lato
    font-liberation-mono
    font-liberation-sans
    font-liberation-serif
    font-merriweather
    font-meslo-lg
    font-montserrat
    font-noto-sans
    font-noto-serif
    font-opensans
    font-roboto
    font-roboto-mono
    font-source-code-pro
    font-times-new-roman
)

for font in "${FONTS[@]}"; do
    brew install --cask "$font" || true
done

echo "Installation complete!"
