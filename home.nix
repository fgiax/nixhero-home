{ config, pkgs, ... }:

{
  home.username = "nix";
  home.homeDirectory = "/home/nix";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    cowsay
    ranger
    neovim
    fzf
    tmux
    alejandra
    grc
  ];

  programs.home-manager.enable = true;
}
