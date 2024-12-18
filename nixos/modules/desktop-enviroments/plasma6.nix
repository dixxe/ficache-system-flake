{ pkgs, ... }:

{	
	# Debloat.
	environment.plasma6.excludePackages = with pkgs.kdePackages; [
		plasma-browser-integration
		konsole
		oxygen
		kate
		okular
		elisa
	];

	services = {
		libinput.enable = true;
		
		desktopManager = {
				plasma6.enable = true;
			};

		power-profiles-daemon.enable = false;
	};

  	services.xserver = {
		enable = true;

		displayManager = {
			gdm.enable = true;
			gdm.wayland = true;
		};
	};
	
	#qt = {
	#	enable = true;
	#	platformTheme = "gnome";
	#	style = "adwaita-dark";
	#};
}