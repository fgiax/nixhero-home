{ config, pkgs, ... }:

{
  home.username = "nix";
  home.homeDirectory = "/home/nix";
  home.stateVersion = "26.05";

  programs.fish.enable = true;

  programs.fish.shellAliases = {
    ll = "ls -lah";
    vim = "nvim";
    vi = "nvim";
    v = "nvim .";
  };

  programs.fish.interactiveShellInit = ''
    set -gx EDITOR nvim
    set -gx PAGER nvim
    set -gx MANPAGER "nvim +Man!"
  '';

}

