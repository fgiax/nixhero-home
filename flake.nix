{
  description = "Home Manager configuration of nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    let
      system = "aarch64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations."nixhero-home" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [
            ./home
            ./fish
            ./neovim
          ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
      };
    };
}
