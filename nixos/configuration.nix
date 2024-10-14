# Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/minimal/bundle.nix # minimal bundle to run pc
      ./modules/user_bundle.nix

      ./modules/hardware/nvidia.nix
      ./modules/hardware/battery-threshold.nix
      ./system-packages.nix
      ./modules/desktop-enviroments/plasma6.nix
    ];

  disabledModules = [
    ./modules/xkb-settings.nix
  ];
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "Europe/Moscow";

  system.stateVersion = "24.05"; # Did you read the comment?

  services.gvfs.enable = true;
  services.udisks2.enable = true;

}
