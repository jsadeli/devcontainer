#!/bin/bash

OFF="\033[0m"           # text reset
YELLOW="\033[0;33m"

# ------------------------------------------------------------------------------
# zsh configuration
# ------------------------------------------------------------------------------

echo -e "${YELLOW}-> Install powerline fonts...${OFF}"
git clone --depth=1 https://github.com/powerline/fonts.git
cd fonts || exit
./install.sh
cd .. && rm -rf fonts

echo -e "${YELLOW}-> Install Oh My Posh...${OFF}"
curl -s https://ohmyposh.dev/install.sh | bash -s

echo -e "${YELLOW}-> Copy customized zsh config...${OFF}"
cp .devcontainer/configs/.zshrc "$HOME/.zshrc"
