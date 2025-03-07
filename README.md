> This dotfiles is in Arch-based and it's just about tools and applications, no DE, WM, font, theme, wallpaper setup

## 1. Install necessary pkgs

Firstly, you should install AUR helper, you can choose `paru` or `yay`. I prefer `yay`

```bash

```

So, start installing a lot of cool cli tools and packages

```bash

```

## 2. Setup zsh and oh-my-zsh

Change your shell to `zsh`

```bash
chsh -s $(which zsh) $(whoami)
```

You should logout or reboot to take the change. If you want to use oh-my-zsh, you can check this gist [Link](https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df) . I use zinit now, so it is in my dotfiles

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
