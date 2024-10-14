{ config, ...}:

{
  services.xserver.videoDrivers = ["nvidia"];
  
  hardware = {
    graphics.enable = true;
  };

  hardware.nvidia = {
    modesetting.enable = true;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };


  hardware.nvidia.prime = {
    sync.enable = true;

    nvidiaBusId = "PCI:1:0:0";
    amdgpuBusId = "PCI:4:2:0";
  };
}