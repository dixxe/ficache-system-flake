{ lib, pkgs, ... }:

{
    home.packages = with pkgs; [
		obsidian
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
        dotnetCorePackages.sdk_9_0
        godot_4-mono
   ];

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "obsidian"
    ];

}
