{ lib, pkgs, ... }:

{
    home.packages = with pkgs; [
        # Hyprland stuff
        lxqt.lxqt-policykit
        wofi
        
        obsidian
        alacritty
        grimblast
        vlc

        # Personal love
        nautilus

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
