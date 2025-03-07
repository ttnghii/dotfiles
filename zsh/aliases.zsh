# Nvim
if [[ -x "$(command -v nvim)" ]]; then
	alias vi='nvim'
	alias vim='nvim'
	alias svi='sudo nvim'
	alias vis='nvim "+set si"'
    alias nv='nvim'
elif [[ -x "$(command -v vim)" ]]; then
	alias vi='vim'
	alias svi='sudo vim'
	alias vis='vim "+set si"'
fi

# Visual Studio Code
if [[ -x "$(command -v code)" ]]; then
    alias vsc='windsurf --enable-features=UseOzonePlatform --ozone-platform=wayland' 
fi

# Zoxide
if [[ -x "$(command -v zoxide)" ]]; then
    alias cd='z'
fi 

# Exa
if [[ -x "$(command -v eza)" ]]; then
    alias ll='exa -lha --icons=auto --sort=name --group-directories-first --all'
    alias lt='exa --icons=auto --tree --level=3'
    alias ls='exa --icons=always --color=always --no-permissions --no-user --all'
fi


# Fastfetch
if [[ -x "$(command -v fastfetch)" ]]; then
    alias ff='fastfetch'
fi

# Navigation and safe file operations
alias ..='cd ..'           # Up one directory
alias ...='cd ../..'       # Up two directories
alias ....='cd ../../..'   # Up three directories
alias dot='cd $HOME/Clone/dotfiles/'  # Go to dotfiles
alias conf='cd $HOME/.config/'        # Go to config
alias mkd='mkdir -pv'     # Create directories with verbose output
alias rm='rm -iv'         # Remove files with interactive and verbose mode
alias cp='cp -iv'         # Copy files with interactive and verbose mode
alias mv='mv -iv'         # Move files with interactive and verbose mode


# Python
if [[ -x "$(command -v python3)" ]]; then
    alias py='python3'
fi


# Git
if [[ -x "$(command -v git)" ]]; then
    alias gaa='git add .'
    alias gcm='git commit'
    alias gpush='git push'
    alias gst='git status'
    alias gitfastpush='git add . && git commit -m "fast push, no info" && git push origin master' # ! Only use it for master branch and commit without message
fi

# Pacman
alias pacin='sudo pacman -S'
alias pacup='sudo pacman -Syu'
alias paclist='sudo pacman -Q'
alias pacrm='sudo pacman -R'

# Paru
if [[ -x "$(command -v paru)" ]]; then
    alias prin='paru -Sua'
    alias prlist='paru -Qua'
    alias prrm='paru -Rs'
    alias prup='paru -Syu'
fi

# Yay
if [[ -x "$(command -v yay)" ]]; then
    alias yain="yay -S"
    alias yarm="yay -R"
    alias yaup='yay -Syu'
    alias yalist='yay -Q'
fi
