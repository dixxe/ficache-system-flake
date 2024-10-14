{ ... }:

{
	services = {
		libinput.enable = true;
		displayManager.defaultSession = "cinnamon";
	};

    services.xserver = {
		enable = true;
		displayManager.lightdm.enable = true;
		desktopManager = {
			cinnamon.enable = true;
		};
	};
}