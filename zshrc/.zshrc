# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions 
  zsh-syntax-highlighting 
  fast-syntax-highlighting 
  zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh
export KEYTIMEOUT=50

# User configuration

# Starship
eval "$(starship init zsh)"


# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# ----- Bat (better cat) -----

export BAT_THEME=tokyonight_night

# ---- FZF -----

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# --- setup fzf theme ---
#export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
#  --highlight-line \
#  --info=inline-right \
#  --ansi \
#  --layout=reverse \
#  --border=none
#  --color=bg+:#283457 \
#  --color=bg:#16161e \
#  --color=border:#27a1b9 \
#  --color=fg:#c0caf5 \
#  --color=gutter:#16161e \
#  --color=header:#ff9e64 \
#  --color=hl+:#2ac3de \
#  --color=hl:#2ac3de \
#  --color=info:#545c7e \
#  --color=marker:#ff007c \
#  --color=pointer:#ff007c \
#  --color=prompt:#2ac3de \
#  --color=query:#c0caf5:regular \
#  --color=scrollbar:#27a1b9 \
#  --color=separator:#ff9e64 \
#  --color=spinner:#ff007c \
#"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#d0d0d0,fg+:#9aa5ce,bg:#1f2335,bg+:#3b4261
  --color=hl:#7aa2f7,hl+:#7dcfff,info:#e0af68,marker:#9ece6a
  --color=prompt:#ff007c,spinner:#bb9af7,pointer:#9d7cd8,header:#4fd6be
  --color=border:#a9b1d6,label:#aeaeae,query:#d9d9d9'

# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# source ~/fzf-git.sh/fzf-git.sh

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}


# Created by `pipx` on 2024-12-10 08:14:04
export PATH="$PATH:/home/quochuy242/.local/bin"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
# (cat ~/.cache/wal/sequences &)

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

# Alias
alias nv='nvim'
alias vi='nvim'
alias vim='nvim'
alias cd='z'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first --all'
alias lt='eza --icons=auto --tree --level=3'
alias ls='eza --icons=always --color=always --no-permissions --no-user --all'
alias ff='fastfetch'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dot='cd $HOME/Clone/dotfiles/'
alias hyprconf='cd $HOME/.config/hypr/config/'
alias mkd='mkdir -p'
alias py='python3'
alias pyactvenv='source .venv/bin/activate'
alias vsc='code'
alias gaa='git add .'
alias gcm='git commit -m'
alias gpush='git push'
alias gst='git status'
# Only use it for master branch and commit without message
alias gitfastpush='git add . && git commit -m "fast push, no info" && git push origin master' 
alias pacin='sudo pacman -S'
alias pacup='sudo pacman -Syu'
alias paclist='sudo pacman -Q'
alias pacrm='sudo pacman -R'
alias yain="yay -S"
alias yarm="yay -R"
alias yaup='yay -Syu'
alias yalist='yay -Q'
# alias pruin='paru -Sua'
# alias prulist='paru -Qua'


# Run firstly fastfetch
# ff

# For rust
. "$HOME/.cargo/env"

# For atuin
eval "$(atuin init zsh)"
