# Dotfiles

## prerequisite

- git
- flatpak
- nix
- Homebrew

## Installation
1. Install home-manager
[Home Manager Installation Manual](https://nix-community.github.io/home-manager/index.html#sec-install-standalone)

2. Clone this repo and enter folder:

```sh
git clone https://github.com/antidoid/dotfiles && cd dotfiles
```

3. Install the Brew packages

```sh
brew bundle
```

4. Install the flatpaks

```sh
flatpak install -y $(< flatpaks.txt) # bash/zsh
flatpak install -y (cat flatpaks.txt) # fish
```

5. Copy the configs into their respective folder

```sh
cp .zshrc ~
cp nix/* ~/.config/home-manager
cp -rft ~/.config nvim 
```

6. Configure the system with Nix

```sh
home-manager switch --flake ~/.config/home-manager/#$USER
```

7. Restart
