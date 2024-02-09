{ config, lib, pkgs, ... }:
let
  nixGL = import ./nixGL.nix { inherit pkgs config; };
  dconfSettings = import ./dconf.nix;
in {
  home.username = "antid";
  home.homeDirectory = "/home/antid";
  home.stateVersion = "23.05";
  
  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  targets.genericLinux.enable = true;
  fonts.fontconfig.enable = true;

  xdg.enable = true;
  xdg.mime.enable = true;
  
  home.packages = with pkgs; [
    # GUI
    (nixGL wezterm)
    (nixGL vscode)

    # CLI
    fish
    python311Packages.ipython
    neovim
    nixgl.nixGLIntel
    bat
    eza
    starship
    brightnessctl
    lazygit
    tldr
    wl-clipboard
    gcc
    nodejs
    neofetch
    htop
    gh
    tmux
    ripgrep
    zsh
    autojump
    jq
    haskellPackages.misfortune

    # fonts
    inter
    fira-code-nerdfont

    # GNOME Extensions
    gnomeExtensions.blur-my-shell
    gnomeExtensions.dash-to-dock
    gnomeExtensions.internet-speed-meter
    gnomeExtensions.quick-settings-tweaker
    gnomeExtensions.compact-top-bar
    gnomeExtensions.notification-banner-reloaded
    gnomeExtensions.user-themes
  ];

  programs = {
    git = {
      enable = true;
      userEmail = "singhpiyush998@gmail.com";
      userName = "antidoid";
    };
  };

  dconf = {
    enable = true;
    settings = dconfSettings;
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = ''
      export PS1="\\[\\033[01;32m\\]\\u@\\h:\\w\\[\\033[00m\\]\\$ "
    '';
    historyFile = "${config.xdg.configHome}/bash_history";
  };
  
  home.file = {
  };

  home.sessionVariables = {
  };
  
  programs.home-manager.enable = true;
}
