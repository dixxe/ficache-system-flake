{ pkgs, ... }:

{
    home.packages = [ pkgs.dconf ]; 

    stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-frappe.yaml";

    image = ../../topography.png;

    cursor = {
      package = pkgs.oreo-cursors-plus;
      name = "oreo_white_cursors";
      size = 24;
    };

    opacity = {
      desktop = 0.0; #waybars opacity
      popups = 0.75;
      terminal = 0.9;
    };

    };
}
