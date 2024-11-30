{

  imports = [
    ./package-groups/video-processing.nix
    ./your-modules.nix
    ./your-packages.nix
  ];

  home = {
    
    username = "ficache";
    homeDirectory = "/home/ficache";
    stateVersion = "24.05";
  

    keyboard = {
              layout = "us, ru";
              options = "grp:win_space_toggle";
              variant = "qwerty";
          };
  };
}
