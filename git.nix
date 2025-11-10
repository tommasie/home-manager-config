{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "Thomas COLLERTON";
    userEmail = "thomas.collerton@proton.me";
    aliases = {
      co = "checkout";
      st = "status";
      br = "branch";
    };
    extraConfig = {
      core.editor = "vim";
      init.defaultBranch = "main";
    };
  };
}
