#!/usr/bin/env bash

set -eu -o pipefail

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
mv nvim-linux-x86_64.appimage nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage || (
    ./nvim.appimage --appimage-extract
    ./squashfs-root/AppRun --version

    # Optional: exposing nvim globally.
    sudo mv squashfs-root /
    sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
)

#sudo apt update
#sudo apt-get -y install ninja-build gettext cmake unzip curl

#git clone --depth=1 -b v0.9.5 https://github.com/neovim/neovim || true
#cd neovim
#make CMAKE_BUILD_TYPE=Release
#sudo make install

echo 'alias vim=nvim' >>"$HOME/.bashrc"

sudo apt-get install ripgrep

npm i -g prettier
