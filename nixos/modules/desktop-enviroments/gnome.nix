{ pkgs, lib, ... }:

{
	services = {
		libinput.enable = true;
		displayManager.defaultSession = "gnome";
		power-profiles-daemon.enable = false;
	};

  services.xserver = {
		enable = true;
		displayManager.gdm.enable = true;
		desktopManager = {
			gnome.enable = true;
		};
	};

	# Extensions are managed in gnomeModule.nix

	services.gnome.gnome-settings-daemon.enable = true;

	environment.gnome.excludePackages = (with pkgs; [
		atomix # puzzle game
		cheese # webcam tool
		epiphany # web browser
		evince # document viewer
		geary # email reader
		gedit # text editor
		gnome-characters
		gnome-music
		gnome-photos
		gnome-terminal
		gnome-tour
		hitori # sudoku game
		iagno # go game
		tali # poker game
		totem # video player
	]);

	nixpkgs.overlays = [
    # GNOME 46: triple-buffering-v4-46
    (final: prev: {
      gnome = prev.gnome.overrideScope (gnomeFinal: gnomePrev: {
        mutter = gnomePrev.mutter.overrideAttrs (old: {
          src = pkgs.fetchFromGitLab  {
            domain = "gitlab.gnome.org";
            owner = "vanvugt";
            repo = "mutter";
            rev = "triple-buffering-v4-46";
            hash = "sha256-fkPjB/5DPBX06t7yj0Rb3UEuu5b9mu3aS+jhH18+lpI=";
          };
        });
      });
    })
  ];
}