#! /bin/bash

echo "Arch: $(arch)"

curl -s https://api.github.com/repos/rapiz1/rathole/releases/latest \
    | grep "browser_download_url.*$(echo $(arch) | sed 's/l//').*linux-musl.*.zip" \
    | cut -d : -f 2,3  \
    | tr -d \" \
    | wget -qi -

unzip rathole*.zip
rm rathole*.zip
