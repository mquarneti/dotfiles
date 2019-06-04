if [ ! -d ~/.zsh ]; then
    mkdir ~/.zsh
    curl -L git.io/antigen > ~/.zsh/antigen.zsh
fi

source ~/.zsh/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen theme romkatv/powerlevel10k
antigen apply

# History
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000

# AutoCompletion
autoload -Uz compinit
compinit
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}"
zstyle ":completion:*" menu select

# Aliases and custom functions
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"
alias vi="nvim"
alias cat="bat --style=plain"
alias sudo="sudo " # to make aliases working with sudo
mkcd() { mkdir -p $1 && cd $1 }

# KeyBindings
bindkey "^[[1;5D" backward-word                 # CTRL-LEFT
bindkey "^[[1;5C" forward-word                  # CTRL-RIGHT
bindkey "^[[1;5A" history-substring-search-up   # UP
bindkey "^[[1;5B" history-substring-search-down # DOWN
