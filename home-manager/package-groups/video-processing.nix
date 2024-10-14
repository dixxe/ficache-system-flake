{ pkgs, ... }:

{
    programs.obs-studio = {
        enable = true;
        plugins = with pkgs.obs-studio-plugins; [
            wlrobs
            obs-backgroundremoval
            obs-pipewire-audio-capture
        ];
    };

    home.packages = [
        
        pkgs.jellyfin-ffmpeg
        pkgs.libsForQt5.kdenlive
        
    ];
}
