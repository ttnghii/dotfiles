> This dotfiles is in Arch-based and it's just about tools and applications, no DE, WM, font, theme, wallpaper setup

## 1. Clone dotfiles and setup

```bash
git clone https://github.com/quochuy242/dotfiles.git ~/dotfiles/
cd ~/dotfiles/

# If you use Arch-based distro
chmod +x scripts/setup_arch.sh
./scripts/setup_arch.sh

# If you use Ubuntu-based distro
chmod +x scripts/setup_ubuntu.sh
./scripts/setup_ubuntu.sh

# If you use MacOS
chmod +x scripts/setup_macos.sh
./scripts/setup_macos.sh
```

## 2. Change shell

Change your shell to `zsh`

```bash
chsh -s $(which zsh) $(whoami)
```

You should logout or reboot to take the change. If you want to use oh-my-zsh, you can check this gist [Link](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df) and I use zinit now

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

Remember, restart your terminal to take effect.
