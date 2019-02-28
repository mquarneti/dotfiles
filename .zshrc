# Plugins
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# AutoCompletion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# Aliases and custom functions
alias ls="ls -A --color=auto"
alias bb="bb-wrapper --aur"
alias up="bb -Syu && flatpak update"
alias cat="bat --style=plain"
alias vi="nvim"
alias sudo="sudo " # to make aliases working with sudo
mkcd() { mkdir -p $1 && cd $1 }

# KeyBindings
bindkey "^[[1;5D" backward-word              # CTRL-LEFT
bindkey "^[[1;5C" forward-word               # CTRL-RIGHT
bindkey "^[[A" history-substring-search-up   # UP
bindkey "^[[B" history-substring-search-down # DOWN

# Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi
