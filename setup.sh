#!/bin/bash

# Setup oh-my-zsh
## Install oh-my-zsh
echo -e "Install oh-my-zsh\n\n"
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o install.sh
chmod +x install.sh
./install.sh
rm -r install.sh

## Install plugins
echo -e "\n\nClone zsh-autocomplete, zsh-autosuggestion and zsh-fast-syntax-highlighting\n\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autocomplete
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

# Install TPM
echo -e "\n\nClone Tmux Plugin Manager\n\n"
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Setup bat
bat cache --build

# Setup by stow
stow .
