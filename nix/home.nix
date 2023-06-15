{ config, pkgs, ... }:

let nixGL = import ./nixGL.nix { inherit pkgs config; };
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
    ngrok
    python311Packages.ipython
    neovim
    nixgl.nixGLIntel
    bat
    exa
    fortune
    starship
  ];

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
