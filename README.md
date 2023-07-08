# Dotfiles

## prerequisite
- git
- flatpak
- nix
- home-manager

## Installation
1. Clone this repo and enter folder:

```sh
git clone https://github.com/antidoid/dotfiles && cd dotfiles
```
2. Copy the configs into their respective folder
```sh
cp -t ~/.config/home-manager nix/home.nix nix/flake.nix nix/nixGL.nix
cp -rft ~/.config nvim wezterm fish environment.d starship.toml
```
3. Install the nix packages
```sh
hms
```
4. Install the flatpaks
```sh
flatpak install -y $(< flatpaks.txt) # bash
flatpak install -y (cat flatpaks.txt) # fish
```

5. Logout and log back in.