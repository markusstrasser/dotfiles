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

# Open each extension's Chrome Web Store URL in Brave
for ext_info in "${extensions[@]}"; do
    ext_id="${ext_info%% #*}"
    brave "https://chrome.google.com/webstore/detail/$ext_id"
done
