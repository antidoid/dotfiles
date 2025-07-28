# Plugins
plugins=(
  git
)

# Save History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Aliases
alias ll='eza -lbh --icons --color=auto --group-directories-first'
alias la='eza -lah --icons --color=auto --group-directories-first'
alias tree='eza -l --tree'
alias nv='nvim $1'
alias cat='bat'
alias zd='flatpak run dev.zed.Zed'

# Inits
fortune -s
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

## case-insensitive (all) completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Command Autocompletions
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

complete -o nospace -C /var/home/linuxbrew/.linuxbrew/bin/terraform terraform
source $(brew --prefix)/etc/bash_completion.d/az
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
