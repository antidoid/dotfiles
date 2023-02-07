# Adding Hyprland to fedora

### Using Gnome as base, execute the following commands: 

1. `sudo dnf copr enable bzaidan/Hyprland`
2. `sudo dnf copr enable eddsalkield/swaylock-effects` 
3. `sudo dnf install hyprland waybar swaylock-effects swaybg wlogout nwg-launchers rofi-wayland dunst fontawesome-fonts fontawesome-fonts-web`
4. Copy the dotfiles from this folder.

- Note: Install Any Nerdfont into your system.
- Note: Some experimental features like **wlr/workspaces** may not work in the dnf package, in that case consider building from source with experimental features enabled in the `meson_options.txt`
