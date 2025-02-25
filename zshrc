source ~/.dotfiles/aliases

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select # keyboard-driven autocompletion
zstyle ':completion::complete:*' gain-privileges 1 # sudo autocompletion

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
