# Dotfiles

## prerequisite

- git
- flatpak
- nix

## Installation
1. Install home-manager
[Home Manager Installation Manual](https://nix-community.github.io/home-manager/index.html#sec-install-standalone)

2. Clone this repo and enter folder:

```sh
git clone https://github.com/antidoid/dotfiles && cd dotfiles
```

3. Install the flatpaks

```sh
flatpak install -y $(< flatpaks.txt) # bash
flatpak install -y (cat flatpaks.txt) # fish
```

4. Copy the configs into their respective folder

```sh
cp -t ~/.config/home-manager nix/home.nix nix/flake.nix nix/nixGL.nix
cp -rft ~/.config nvim wezterm fish starship.toml
```

5. Install the nix packages

```sh
home-manager switch --flake ~/.config/home-manager/#antid
```

6. Restart
