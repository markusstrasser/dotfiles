#!/bin/bash

# List of extension IDs and names
extensions=(
    aapbdbdomjkkjkaonfhkkikfgjllcleb
    fmcdfigcdfkdghdklblbbpacikcchbbh
    khncfooichmfjbepaaaebmommgaepoid
    mhnlakgilnojmhinhkckjpncpbhabphi
    pganeibhckoanndahmnfggfoeofncnii
    abdkjmofmjelgafcdffaimhgdgpagmop
    gpdjojdkbbmdfjfahjcgigfpmkopogic
    liecbddmkiiihnedobmlmillhodjkdmb
    mnhdpeipjhhkmlhlcljdjpgmilbmehij
    amoldiondpmjdnllknhklocndiibkcoe
    hdannnflhlmdablckfkjpleikpphncik
    lifgeihcfpkmmlfjbailfpfhbahhibba
    nakplnnackehceedgkgkokbgbmfghain
    chphlpgkkbolifaimnlloiipkdnihall
    homifejhmckachdikhkgomachelakohh
    lpfemeioodjbpieminkklglpmhlngfcn
    njgehaondchbmjmajphnhlojfnbfokng
    cmlddjbnoehmihdmfhaacemlpgfbpoeb
    hponfflfgcjikmehlcdcnpapicnljkkc
    mbnbehikldjhnfehhnaidhjhoofhpehk
    nmgcefdhjpjefhgcpocffdlibknajbmj

)


# Dynamically locate the Brave browser executable
# Define the path to the Brave browser executable on macOS
# Define the path to the Brave browser executable on macOS
brave_executable="/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"

# Check if the Brave browser executable exists
if [[ ! -x "$brave_executable" ]]; then
    echo "Brave browser not found at $brave_executable. Please ensure it is installed."
    exit 1
fi

# Open each extension's Chrome Web Store URL in Brave
for ext_id in "${extensions[@]}"; do
    "$brave_executable" "https://chrome.google.com/webstore/detail/$ext_id"
done
