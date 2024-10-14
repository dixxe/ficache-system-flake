{ ... }:

{
    services.xserver.videoDrivers = [ "amdgpu" ];

    hardware = {
        graphics.enable = true;
    };

    hardware.amdgpu.amdvlk = {
        enable = true;
        support32Bit.enable = true;
    };
}