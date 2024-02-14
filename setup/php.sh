#!/usr/bin/env bash

set -eu -o pipefail

sudo apt-get install direnv

echo 'export PATH=$PATH:/workspace/bin' >>"$HOME/.bashrc"
echo 'eval "$(direnv hook bash)"' >>"$HOME/.bashrc"
