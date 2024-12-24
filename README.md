# dotfiles
My Arch-based dotfiles

## Usage

### Install stow and applications

```bash
sudo pacman -S stow zsh fzf neovim tmux yazi \
    bat btop fastfetch kitty alacritty nwg-look
paru -S cava
```

You can modify the install command based on your linux distro

### Setup
```bash
git clone https://github.com/quochuy242/dotfiles.git
cd dotfiles
./setup.sh
```

After running setup script, you should run tmux 

```bash
tmux new -s <NAME_SESSION>
```

and press `<C-a> I` to load the tmux's plugins
