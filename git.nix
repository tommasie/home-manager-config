{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Thomas COLLERTON";
        email = [ "thomas.collerton@proton.me" ];
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
