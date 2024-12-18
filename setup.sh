#!/usr/bin/zsh

echo -e "Install oh-my-zsh\n\n"
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
./install.sh
rm -r install.sh

echo -e "\n\nClone zsh-autosuggestion and zsh-syntax-highlighting\n\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo -e "\n\nInstall tpm - tmux plugins manager\n\n"
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

echo -e "\n\nUsing stow and source zsh and tmux to show the change\n\n"
stow .
source ~/.zshrc
tmux source ~/.config/tmux/tmux.conf

echo -e "\n\nSetup completely"
