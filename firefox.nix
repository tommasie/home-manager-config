{
  inputs,
  pkgs,
  lib,
  ...
}:

{
  programs.firefox = {
    enable = true;
    profiles.default = {
      id = 0;
      name = "default";
      isDefault = true;
      search = {
        default = "ddg";
        order = [
          "ddg"
          "google"
        ];
        force = true;
        engines = {
          bing.metaData.hidden = true;
        };
      };
      extensions.packages = with inputs.firefox-addons.packages.${pkgs.system}; [
        ublock-origin
        privacy-badger
        proton-pass
        proton-vpn
      ];
      settings = {
        "browser.startup.page" = 3; # Restore previous session's tabs
      };
    };
  };
}
