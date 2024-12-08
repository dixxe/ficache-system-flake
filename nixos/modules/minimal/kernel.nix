{pkgs, ...}:
{
  #linux kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;
}