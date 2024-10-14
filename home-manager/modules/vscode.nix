# For people that doesn't like neovim :)
{ pkgs, ... }:
{
    programs.vscode = {
        enable = true;
        package = pkgs.vscodium;
        # I don't add extensions here, because nixpkgs doesn't contain
        # extensions I need. Oops.
    };
}