{ config, pkgs, ... }:

{
  home.username = "nix";
  home.homeDirectory = "/home/nix";
  home.stateVersion = "26.05";
  home.packages = [ pkgs.cowsay ];
}
