{ config, pkgs, ... }:

{
  home.username = "nix";
  home.homeDirectory = "/home/nix";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    cowsay
    ranger
    neovim
    tmux
    alejandra
    grc
  ];

  programs.home-manager.enable = true;
}
