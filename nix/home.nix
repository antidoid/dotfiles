{ config, lib, pkgs, ... }:
let
  nixGL = import ./nixGL.nix { inherit pkgs config; };
in {
  home.username = "antid";
  home.homeDirectory = "/home/antid";
  home.stateVersion = "23.05";
  
  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  home.packages = with pkgs; [
    # GUI
    (nixGL wezterm)

    # CLI
    fish
    ngrok
    python311Packages.ipython
    neovim
    nixgl.nixGLIntel
    bat
    exa
    fortune
    starship
    brightnessctl

    # fonts
    inter

    # GNOME Extensions
    gnomeExtensions.blur-my-shell
    gnomeExtensions.appindicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.hide-activities-button
    gnomeExtensions.internet-speed-meter
    gnomeExtensions.quick-settings-tweaker
  ];

  dconf = {
    enable = true;
    settings = {
      "org/gnome/shell" = {
        disable-user-extensions = false;

        enabled-extensions = [
          "blur-my-shell@aunetx"
          "appindicatorsupport@rgcjonas.gmail.com"
          "dash-to-dock@micxgx.gmail.com"
          "Hide_Activities@shay.shayel.org"
          "InternetSpeedMeter@alshakib.dev"
          "quick-settings-tweaks@qwreey"
        ];

        disabled-extensions = [];
      };

      "org/gnome/desktop/wm/keybindings" = {
        close = ["<Super>q"];
        move-to-workspace-left = ["<Shift><Super>h"];
        move-to-workspace-right = ["<Shift><Super>l"];
        switch-to-workspace-left = ["<Super>h"];
        switch-to-workspace-right = ["<Super>l"];
        toggle-fullscreen = ["<Super>f"];
        minimize = [];
      };

      "org/gnome/mutter/keybindings" = {
        toggle-tiled-left = ["<Super>j"];
        toggle-tiled-right = ["<Super>k"];
      };

      "org/gnome/settings-daemon/plugins/media-keys" = {
        www =  ["<Super>b"];
        screensaver = ["<Shift><Super>Escape"];
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
          binding = "<Super>Return";
          command = "wezterm";
          name = "Terminal";
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
        binding = "<Super>e";
        command = "nautilus /home/antid";
        name = "File Manager";
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
        binding = "<Shift><Super>period";
        command = "brightnessctl set +5%";
        name = "Increase Brightness";
      };
      
      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
        binding = "<Shift><Super>comma";
        command = "brightnessctl set 5%-";
        name = "Decrease Brightness";
      };
    };
  };

  fonts.fontconfig.enable = true;
  
  home.file = {
  };

  home.sessionVariables = {
  };
  
  programs.home-manager.enable = true;
}
