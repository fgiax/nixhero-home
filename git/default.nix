{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "zuger";
    userEmail = "fgiax02@gmail.com";
  };
}
