# Dotfiles

## prerequisite

- git
- flatpak
- Homebrew

## Installation
1. Clone this repo and enter folder:

```sh
git clone https://github.com/antidoid/dotfiles && cd dotfiles
```

2. Install the Brew packages

```sh
brew bundle
```

3. Install the flatpaks

```sh
flatpak install -y $(< flatpaks.txt) # bash/zsh
flatpak install -y (cat flatpaks.txt) # fish
```

4. Copy the configs into their respective folder

```sh
cp -ft ~ .zshrc .tmux.conf
cp -rft ~/.config nvim zed dconf starship.toml
cp -rf zed/* ~/.var/app/dev.zed.Zed/config/zed/
```

5. Configure Gnome

```sh
sudo sed -i '1s|^|service-db:keyfile\/user\n|' /etc/dconf/profile/user
```

7. Restart
