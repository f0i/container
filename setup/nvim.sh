#!/usr/bin/env bash

set -eu -o pipefail

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar xzf nvim-linux-x86_64.tar.gz
sudo mv nvim-linux-x86_64/bin/nvim /usr/bin/nvim

echo 'alias vim=nvim' >>"$HOME/.bashrc"

sudo apt-get install ripgrep

npm i -g prettier
