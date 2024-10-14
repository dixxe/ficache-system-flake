{ pkgs, ...}:

{
    programs.steam = {
        enable = true;
        #extest.enable = true;
        remotePlay.openFirewall = true;
        dedicatedServer.openFirewall = true;
        localNetworkGameTransfers.openFirewall = true;
        package = pkgs.steam-small.override {
            extraEnv = {
                OBS_VKCAPTURE = true;
            };
        };
    };

    hardware.graphics = {
        enable = true;
        enable32Bit = true;
    };

    environment.systemPackages = [
        
        pkgs.lutris
        pkgs.wineWowPackages.waylandFull
        pkgs.winetricks

        pkgs.dxvk
        pkgs.mesa
        pkgs.mangohud
        pkgs.gamemode
        pkgs.gamescope
        pkgs.vulkan-loader
        pkgs.vulkan-validation-layers

    ];
}
