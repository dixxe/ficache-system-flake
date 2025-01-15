{pkgs, ...}:
{
  dconf = {
    enable = true;
    settings."org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = with pkgs.gnomeExtensions; [
        appindicator.extensionUuid
        vitals.extensionUuid
        dash-to-dock.extensionUuid
        media-controls.extensionUuid
      ];
    };
  };
}