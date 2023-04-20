#!/bin/bash

# Install Homebrew if it's not already installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew
brew update


brew install git
brew install node
brew install wget
brew install z
brew install ag
brew install ack
brew install fd
brew install ffind
brew install fpp
brew install tmux
brew install watchman
brew install yarn
brew install ranger

npm install -g ipt
npm install -g http-server
npm install -g esformatter
npm install -g prettier
npm install -g eslint
# yeah, haters gonna hate
npm install -g replace

# Install GENERAL apps available through Homebrew
brew install --cask blender
brew install --cask figma
brew install --cask spotify
brew install --cask signal
brew install --cask telegram

brew install --cask docker
brew install --cask google-chrome
brew install --cask handbrake
brew install --cask iterm2
brew install --cask postman

brew install --cask visual-studio-code
brew install --cask vlc



#!/bin/bash
# Install Homebrew if it's not already installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew
brew update
brew install nmap
brew install node
brew install pandoc
brew install watch
brew install unzip
brew install tig

brew install ssh-copy-id
brew install shellcheck
brew install rsync
brew install rename
brew install python
# Install additional tools

# 1. asciinema: Record and share terminal sessions
brew install asciinema

# 2. bat: A cat clone with syntax highlighting and Git integration
brew install bat

# 3. cloc: Count lines of code in various programming languages
brew install cloc

# 4. cmake: Cross-platform make system for generating build files
brew install cmake

# 5. coreutils: GNU core utilities (basic file, shell, and text manipulation utilities)
brew install coreutils

# 7. curl: Command-line tool for transferring data with URL syntax
brew install curl

# 9. exiftool: Read, write, and edit metadata for various file formats
brew install exiftool

# 10. fd: Simple, fast, and user-friendly alternative to find
brew install fd

# 11. ffmpeg: Play, record, convert, and stream audio and video
brew install ffmpeg

# 12. fzf: Command-line fuzzy finder
brew install fzf

# 13. gh: GitHub CLI tool for managing GitHub repositories and issues
brew install gh

# 15. git-lfs: Git extension for versioning large files
brew install git-lfs

# 17. go: Open-source programming language for building simple and efficient software
brew install go


# 19. grep: GNU grep, egrep, and fgrep
brew install grep

brew install ripgrep

# 20. gzip: Compression and decompression tool
brew install gzip

# 21. htop: Interactive process viewer for Unix systems
brew install htop

# 22. httpie: User-friendly command-line HTTP client
brew install httpie

# 26. jq: Lightweight and flexible command-line JSON processor
brew install jq

# 27. jsonlint: JSON parser and validator with a CLI
brew install jsonlint

# 30. mackup: Keep application settings in sync across multiple machines
brew install mackup

# Install additional tools
brew install \

awscli \
entr \
# 8. fasd: Command-line productivity booster, similar to autojump
fasd \
# 9. fdupes: Find and remove duplicate files
fdupes \
# 10. findutils: Collection of GNU find, xargs, and locate
findutils \
# 11. fswatch: Monitor a directory for changes and run a shell command
fswatch \
# 15. grc: Generic colorizer for terminal output or log files
grc \
# 16. hstr: Bash and Zsh shell history suggest box

# Print installation complete message
echo "Installation complete!"
