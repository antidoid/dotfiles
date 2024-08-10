# Plugins
plugins=(
  git
)

# Save History
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY

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
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
