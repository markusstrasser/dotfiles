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
brave_executable="$(command -v brave || which brave)"

# Check if the Brave browser executable was found
if [[ -z "$brave_executable" ]]; then
    echo "Brave browser not found. Please ensure it is installed and available in your PATH."
    exit 1
fi

# Open each extension's Chrome Web Store URL in Brave
for ext_id in "${extensions[@]}"; do
    "$brave_executable" "https://chrome.google.com/webstore/detail/$ext_id"
done
