#!/bin/bash

# Install Homebrew if it's not already installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew
brew update

PACKAGES=(
    ack
    anaconda
    asciinema
    autojump
    awscli
    bat
    bash
    bash-completion@2
    binutils
    bfg
    cmake
    coreutils
    cheat
    ctop
    curl
    dex2jar
    direnv
    dns2tcp
    docker
    entr
    exa
    exiftool
    fasd
    fd
    fdupes
    ffmpeg
    findutils
    fish
    fpp
    fswatch
    fzf
    gmp
    gnupg
    go
    grep
    grc
    gs
    gzip
    hashpump
    handbrake
    htop
    http-server
    httpie
    hub
    hydra
    icdiff
    imagemagick
    ipt
    java
    john
    jq
    jsonlint
    knock
    libreoffice
    lsd
    lua
    lynx
    mackup
    MonitorControl
    moreutils
    nmap
    netpbm
    node
    openssh
    openssl@1.1
    p7zip
    pandoc
    php
    pigz
    pngcheck
    pretier
    pv
    python
    python@3.9
    ranger
    redis
    rename
    replace
    ripgrep
    rg
    rlwrap
    rsync
    screen
    shellcheck
    socat
    sqlite
    ssh-copy-id
    tcpflow
    tcpreplay
    tcptrace
    thefuck
    tig
    tldr
    tmux
    tree
    tre
    ucspi-tcp
    ugrep
    unzip
    vbindiff
    vim
    watch
    watchman
    wget
    woff2
    xplr
    xz
    yadm
    yarn
    z
    zopfli
)

for pkg in "${PACKAGES[@]}"; do
    brew install "$pkg" || true
done


brew cleanup

#Install quick look utils
echo "Installing Quick Look utils"
brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo

#mac-cli
sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"

# Install npm packages
npm install -g esformatter http-server eslint ipt prettier replace npm-check loadtest


