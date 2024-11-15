{ lib, pkgs, ... }:

{
    home.packages = with pkgs; [
				obsidian
        alacritty
        grimblast
        vlc

        # Social stuff
        telegram-desktop
        
        firefox
        qbittorrent
        libreoffice

        # Minecraft stuff
        prismlauncher

        #Random stuff
        krita
   ];

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "obsidian"
    ];
}
