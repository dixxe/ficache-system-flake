{ pkgs, lib, ... }:

{
    programs.obs-studio = {
        enable = true;
        plugins = with pkgs.obs-studio-plugins; [
            wlrobs
            obs-backgroundremoval
            obs-pipewire-audio-capture
        ];
    };

    home.packages = with pkgs; [
        
        jellyfin-ffmpeg
        libsForQt5.kdenlive
        gpu-screen-recorder-gtk
        
    ];   
}
