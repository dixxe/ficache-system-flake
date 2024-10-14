# Edit this configuration file to define what should be installed on
# your SYSTEM. For something simple use home-manager.
{ inputs, pkgs, ...}: {

    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
        inputs.envycontrol.packages.x86_64-linux.default
	      pciutils
        home-manager
        nh
    ];

}
