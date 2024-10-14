{ ... }:

{
	services = {
		libinput.enable = true;
		displayManager.defaultSession = "gnome";
	};

    services.xserver = {
		enable = true;
		displayManager.gdm.enable = true;
		desktopManager = {
			gnome.enable = true;
		};
	};
}