{ lib, pkgs, ... }:

{
    home.packages = with pkgs; [
        logseq
        joplin-desktop
        alacritty
        vlc

        # Social stuff
        telegram-desktop
        vesktop
        
        firefox
        qbittorrent
        libreoffice

        # Minecraft stuff
        prismlauncher

        #Development stuff
        krita
   ];

    nixpkgs.config.permittedInsecurePackages = [
        "electron-27.3.11"
    ];

}
