{ pkgs, ... }:

{
    home.packages = [ pkgs.dconf ];

    gtk = {
        enable = true;
        iconTheme = {
            name = "Adwaita";
            package = pkgs.adwaita-icon-theme;
        };
    };
}
