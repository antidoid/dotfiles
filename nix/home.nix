{ config, pkgs, ... }:
let
  nixGL = import ./nixGL.nix { inherit pkgs config; };
in {
  home.username = "antid";
  home.homeDirectory = "/home/antid";
  home.stateVersion = "23.05";

  home.packages = with pkgs; [
    # GUI
    figma-linux
    postman
    apostrophe
    fragments
    gnome.gnome-font-viewer
    vlc
    firefox
    (nixGL wezterm)
    megasync
    libreoffice

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
    };
  };
  
  home.file = {
  };

  home.sessionVariables = {
  };
  
  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };
  
  programs.home-manager.enable = true;
}
