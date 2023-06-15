if status is-interactive
    # Commands to run in interactive sessions can go here


    # Shell
    set -g fish_prompt_pwd_dir_length 3
    
    set fish_greeting ""

    # Aliases
    alias ll='exa -lbh --icons --color=auto --group-directories-first'
    alias la='exa -lah --icons --color=auto --group-directories-first'
    alias dev='cd ~/Documents/coding/;ll'
    alias 100Devs='code ~/Documents/Coding/100Devs'
    alias nv='nvim $1'
    alias cat='bat'
    alias mann='tldr $1'
    alias hms='home-manager switch --flake ~/.config/home-manager/#antid'
    alias hmu='nix flake update ~/.config/home-manager/ && hms'

    # dotfiles
    # alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    
    # Auto Start Commands
    set -x fish_startup_command 'fortune -s && starship init fish | source'

    if set -q fish_startup_command
        eval $fish_startup_command
        set -e fish_startup_command
        export PATH="/home/piyush/go/bin/:$PATH"
    end
end
