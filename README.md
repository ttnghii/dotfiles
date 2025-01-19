> This dotfiles is in Arch-based and it's just about tools and applications, no DE, WM, font, theme, wallpaper setup

## 1. Install necessary pkgs

Firstly, you should install AUR helper, you can choose `paru` or `yay`. I prefer `yay`

```bash
# Go Home
cd ~ 

# Create the directory storing all cloning github repos
mkdir -p Clone  
cd Clone

# Install dependencies
sudo pacman -S --needed git base-devel 

# Clone and install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

So, start installing a lot of cool cli tools and packages

```bash
sudo pacman -S zsh fish nushell \
    stow \
    zoxide eza fd fzf bat \
    htop btop fastfetch \
    nano vim neovim tmux \
    yazi \
    kitty alacritty ghostty \
    atuin \
    starship
yay -S cava
```


## 2. Setup zsh and oh-my-zsh

Change your shell to `zsh`

```bash
chsh -s $(which zsh) $(whoami)
```

You should logout or reboot to take the change. Then, you install oh-my-zsh. You can check this gist [Link](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df) or follow my script. 

```bash
# Use curl to install oh-my-zsh
sudo pacman -S curl wget
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```


## 3. Setup atuin

```bash
# For new user
atuin register -u <USERNAME> -e <EMAIL>

# If you have account, you just log in
atuin login --username <USERNAME>
```

After logging in, you can sync data

```bash 
atuin import auto
atuin sync
```

## 4. Apply my dotfiles

Copy that

```bash
cd ~/Clone/dotfiles
./setup.sh
```

Remember, reboot to take the change

