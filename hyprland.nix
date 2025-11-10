{pkgs, ...}:
{
  
  programs.kitty.enable = true; # Default TTY for Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    # Use Hyprland package from the Nixos module
    package = null;
    portalPackage = null;

    settings = {
      input = {
        kb_layout = "us";
	kb_variant = "intl";
      };
      "$mod" = "SUPER";
      bind = [
        "$mod, F, exec, firefox"
	"$mod, K, exec, kitty"
	"$mod, M, exit"
      ]
      ++ (
        # workspaces
	# binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
	builtins.concatLists(builtins.genList (i:
	  let ws = i + 1;
	  in [
	    "$mod, code:1${toString i}, workspace, ${toString ws}"
	    "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
	  ]
        )
	9)
     );
    };
  };
}
