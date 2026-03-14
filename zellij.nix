{
  programs.zellij = {
    enable = true;
    enableFishIntegration = true;
    exitShellOnExit = true;
    settings = {
      copy_command = "wl-copy";
    };
  };
}
