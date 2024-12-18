{ pkgs, ...}:
{
    # Bootloader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    boot.kernel.sysctl."kernel.sysrq" = 502; # Enable sysrq keys because FUCK YOU NVIDIA!!!
    boot.plymouth.enable = true;
}