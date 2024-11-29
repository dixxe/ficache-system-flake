{ lib, pkgs, ... }:

{
    home.packages = with pkgs; [
		obsidian
        logseq
        alacritty
        vlc

        # Social stuff
        telegram-desktop
        
        firefox
        qbittorrent
        libreoffice

        # Minecraft stuff
        prismlauncher

        #Development stuff
        krita
        godot_4-mono
   ];

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "obsidian"
    ];

    nixpkgs.config.permittedInsecurePackages = [
        "electron-27.3.11"
    ];

}
