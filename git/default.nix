{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    
    settings = {
      user = {
        name = "zuger";
        email = "fgiax02@gmail.com";
      };
      
      init = {
        defaultBranch = "main";
      };
      
      core = {
        editor = "nvim";
        autocrlf = "input";
      };
      
      push = {
        default = "simple";
      };
      
      alias = {
        co = "checkout";
        br = "branch";
        st = "status";
        ci = "commit";
      };
      
      color = {
        ui = true;
      };
    };
    
  };
}
