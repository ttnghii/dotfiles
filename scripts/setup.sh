#!/usr/bin/zsh

# Install dependencies
dependencies=(python3 python-pip uv zsh tmux stow)
for dependency in "${dependencies[@]}"; do
    if ! dnf list --installed | greq $dependency &> /dev/null; then
        sudo dnf install $dependency
    fi
done

# Install oh-my-zsh
echo -e "Install oh-my-zsh\n\n"
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
chmod +x install.sh
./install.sh
rm -r install.sh

# Install zsh-autosuggestions and zsh-syntax-highlighting
echo -e "\n\nClone zsh-autosuggestion and zsh-syntax-highlighting\n\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install tmux plugin manager
echo -e "\n\nInstall tpm - tmux plugins manager\n\n"
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Install stow
echo -e "\n\nUsing stow and source zsh and tmux to show the change\n\n"
stow .
source ~/.zshrc
tmux source ~/.config/tmux/tmux.conf

# Download wallpaper
## Install python packages
uv venv
uv pip install -r pyproject.toml
source .venv/bin/activate
## Run python script
python3 scripts/download_wallpaper.py

echo -e "\n\nSetup completely"
