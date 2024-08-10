# Plugins
plugins=(
  git
)

# Aliases
alias ll='eza -lbh --icons --color=auto --group-directories-first'
alias la='eza -lah --icons --color=auto --group-directories-first'
alias tree='eza -l --tree'
alias nv='nvim $1'
alias cat='bat'

# Inits
fortune -s
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Command Autocompletions
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /var/home/linuxbrew/.linuxbrew/bin/terraform terraform
source $(brew --prefix)/etc/bash_completion.d/az
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
