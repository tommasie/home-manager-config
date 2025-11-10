{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Thomas Collerton";
        email = [ "tho.collerton@gmail.com" ];
      };
      alias = {
        co = "checkout";
        st = "status";
        br = "branch";
      };
      core.editor = "vim";
      init.defaultBranch = "main";
    };
  };

  programs.gh = {
    enable = true;
  };
}
