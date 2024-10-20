#!/usr/bin/env bash

set -eu -o pipefail
cd /tmp/

# update with current npm version
npm install -g npm@10.2.3

# install dfx
DFXVM_INIT_YES=true sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"

# install expect
sudo apt-get update
sudo apt-get -y install expect

# install mops
npm i -g ic-mops

# instll mo-fmt
npm install -g mo-fmt

# plantuml
sudo apt -y install plantuml
# too old, overwrite with newer version
wget https://github.com/plantuml/plantuml/releases/download/v1.2023.9/plantuml.jar
sudo mv plantuml.jar /usr/share/plantuml/plantuml.jar
