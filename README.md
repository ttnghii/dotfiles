# dotfiles
My Fedora dotfiles

## Usage

### Install stow and applications

```bash
sudo dnf install stow zsh fzf neovim tmux yazi \
    bat btop cava fastfetch kitty alacritty
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
