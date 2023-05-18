#!/bin/bash

# Install Homebrew if it's not already installed
if ! command -v brew &>/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew
brew update

PACKAGES=(
    ack               #Text search, alternative to grep
    anaconda          #Python distribution, includes packages for scientific computing
    asciinema         #Terminal session recorder
    awscli            #Amazon Web Services command-line interface
    bat               #File viewer, alternative to cat
    bash              #Shell, replaced by zsh on newer macOS
    bash-completion@2 #Bash shell autocompletion
    binutils          #Binary tools, used for low-level programming tasks
    bfg               #Git history cleaner, alternative to git-filter-branch
    broot             #Terminal-based file explorer, alternative to ranger
    cmake             #Build system, alternative to make
    coreutils         #GNU core utilities, provides enhanced versions of macOS tools
    cheat             #Command cheatsheets, alternative to man pages
    curl              #Data transfer, alternative to wget
    dex2jar           #Converts Android APK files to Java JAR
    direnv            #Environment variable manager
    dns2tcp           #DNS tunneling, bypasses network restrictions
    docker            #Container platform
    entr              #Runs commands when files change, alternative to watch
    exa               #Directory listing, alternative to ls
    exiftool          #Metadata editor for images, audio, and video
    #fasd              #Directory and file navigation, alternative to autojump
    fcrackzip         #Password cracker for zip files
    foremost          #File recovery tool
    fd                #File search, alternative to find
    fdupes            #Finds duplicate files
    ffmpeg            #Media converter
    findutils         #File search tools, includes find, xargs, and locate
    fish              #Interactive shell, alternative to bash and zsh
    fpp               #Path picker, helps filter command output
    fswatch           #File change monitor, alternative to inotify-tools
    fzf               #Fuzzy finder for files and command history
    git-lfs           #Git extension for versioning large files
    gmp               #GNU multiple precision arithmetic library
    grep              #Text search, replaced by ack
    grc               #Colorizes command output
    gs                #Ghostscript, PostScript and PDF manipulation
    gzip              #File compression, alternative to bzip2
    hashpump          #Hash length extension attack tool
    handbrake         #Video converter
    htop              #System monitor, alternative to top
    http-server       #Simple HTTP server, alternative to python -m SimpleHTTPServer
    httpie            #HTTP client, alternative to curl
    hub               #GitHub command-line tool, extends git
    hydra             #Password cracker
    icdiff           #Diff tool with colors, alternative to diff
    java              #Java runtime environment
    john              #Password cracker
    jq                #JSON processor
    jsonlint          #JSON validator
    knock             #Port knocking tool
    mackup            #Application settings backup and sync
    moreutils         #Additional Unix utilities
    MonitorControl #Control external monitor brightness
    nmap              #Network scanner
    node              #Node.js runtime environment
    openssh           #SSH client and server, alternative to dropbear
    pandoc            #Document converter
    pngcheck          #PNG  image validator
    prettier          #Code formatter for various languages
    pv                #Pipe viewer, monitors progress of data through a pipe
    python            #Python programming language
    python@3.9        #Python 3.9 version
    ranger            #Terminal-based file manager
    redis             #In-memory data store
    rename            #File renaming tool, alternative to mmv
    replace           #Search and replace tool
    ripgrep           #Text search, alternative to grep and ack
    rg                #Alias for ripgrep
    rlwrap            #Readline wrapper, adds command history to any CLI tool
    rsync             #File synchronization tool
    rust              #Rust programming language    
    shellcheck        #Shell script linter
    socat             #Network utility for data transfer
    sqlite            #Lightweight SQL database engine
    ssh-copy-id       #Copy SSH keys to remote servers
    tcpflow           #TCP connection analyzer
    tcpreplay         #Replay network traffic from pcap files
    tcptrace          #TCP connection analyzer, alternative to tcpflow
    thefuck           #Corrects previous command mistakes
    tig               #Text-mode interface for git
    tldr              #Simplified man pages
    tmux              #Terminal multiplexer, alternative to screen
    tree              #Displays directory structure as a tree
    tre               #Approximate regex search, alternative to grep and agrep
    ugrep             #Ultra fast grep, alternative to grep and ripgrep
    unzip             #Extracts files from ZIP archives
    vbindiff          #Visual binary diff tool
    vim               #Text editor, alternative to nano and emacs
    watch             #Executes commands periodically, alternative to entr
    watchman          #Filesystem watcher, alternative to fswatch
    wget              #File downloader, alternative to curl
    woff2             #Web font converter
    xplr              #Terminal-based file explorer, alternative to ranger
    xz                #File compression, alternative to gzip and bzip2
    yadm              #Dotfile manager, alternative to stow
    yarn              #JavaScript package manager, alternative to npm
    z                 #Directory navigation, alternative to autojump and fasd
)

for pkg in "${PACKAGES[@]}"; do
    brew install "$pkg" || true
done

brew cleanup

#Install quick look utils
#? Replace by Peek App
# echo "Installing Quick Look utils"
# brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo

#mac-cli
sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"

# Install npm packages
npm install -g esformatter http-server eslint ipt prettier replace npm-check loadtest

#Deleted and replaced:


OLD_=(

    john           #Password cracker, alternative to hydra
    libreoffice    #Office suite, alternative to Microsoft Office
    lsd            #Directory listing, alternative to exa
    lynx           #Text-based web browser
    netpbm         #Image manipulation tools
    openssl@1.1    #Cryptography library, older version of openssl
    p7zip          #File archiver, alternative to zip
    php            #PHP programming language
    lua            #Lua programming language
    pigz           #Parallel gzip, alternative to gzip
    screen         #Terminal multiplexer, alternative to tmux
    ucspi-tcp      #TCP client-server command-line tools
    ctop           #Container monitoring, alternative to docker stats
    autojump       #Directory navigation, faster than cd
    gnupg          #Encryption and signing tool, alternative to gpg-suite
    go             #Go programming language
    imagemagick    #Image manipulation, alternative to graphicsmagick
    ipt            #Image processing tool
    zopfli         #Compression library and tool, alternative to gzip
)

