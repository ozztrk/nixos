{ pkgs, ... }:

let
  themeConfig = ''
    # BEGIN_KITTY_THEME
    # Catppuccin-Frappe
    include current-theme.conf
    # END_KITTY_THEME

    # Hide titlebar
    hide_window_decorations titlebar-only
    # Add padding to window borders
    window_padding_width 12

    # Transparent background
    background_opacity 0.8
  '';
in {
  home.packages = [ pkgs.kitty ];
  xdg.configFile."kitty/kitty.conf".text = themeConfig;
}

