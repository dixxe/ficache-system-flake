{
  imports = [
    ./modules/gaming-tweaks.nix
    ./modules/pipewire.nix
    ./modules/auto-cpufreq.nix
    #./modules/zapret.nix
    ./modules/zerotierone.nix

    ./modules/hardware/nvidia.nix
    ./modules/hardware/battery-threshold.nix
    ./modules/desktop-enviroments/plasma6.nix
  ];
}
