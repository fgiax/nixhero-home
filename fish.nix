{ config, pkgs, ... }:

{
  programs.fish.enable = true;

  programs.fish.shellAliases = {
    ll = "ls -lah";
    vim = "nvim";
    vi = "nvim";
    v = "nvim .";
  };

  programs.fish.interactiveShellInit = ''
    set -g fish_greeting
    set -gx EDITOR nvim
    set -gx MANPAGER "nvim +Man!"
  '';

  programs.fish.plugins = [
    {
      name = "grc";
      src = pkgs.fishPlugins.grc.src;
    }
  ];
}
