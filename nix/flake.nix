{
  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixgl.url = "github:guibou/nixGL";
  };

  outputs = { nixpkgs, home-manager, nixgl, ... }:
    let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        overlays = [ nixgl.overlay ];
      };
    in {
      homeConfigurations."antid" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ ./home.nix ];
      };
    };
}
