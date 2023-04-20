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
    gs
    gzip
    hashpump
    htop
    http-server
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
    yarn
    z
    zopfli
)

for pkg in "${PACKAGES[@]}"; do
    brew install "$pkg" || true
done


brew cleanup
brew prune



# Install npm packages
npm install -g esformatter http-server eslint ipt prettier replace
