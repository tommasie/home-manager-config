{ pkgs, ... }:
{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    opts = {
      number = true;
      expandtab = true;
      tabstop = 2;
      shiftwidth = 2;
    };

    colorschemes.catppuccin.enable = true;

    plugins = {
      lightline.enable = true;
      telescope.enable = true;
      # Dependency for telescope
      web-devicons.enable = true;
      treesitter.enable = true;
    };
  };
}
