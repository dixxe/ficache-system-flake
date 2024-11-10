{
    plugins.web-devicons.enable
    
    imports = [
        ./defaultGtk.nix
        ./git.nix
        # ./desktop-managers/hypr.nix
        # ./desktop-managers/waybar.nix
        ./nixvim/nixvim.nix
        ./stylix.nix
        # ./gammastep.nix
        ./vscode.nix
        ./syncthing.nix
        ./helix.nix
    ];
}
