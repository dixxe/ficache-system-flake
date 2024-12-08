{ pkgs, ... }:

{
   fonts.packages = with pkgs; [
    nerd-fonts.ubuntu
    noto-fonts
    hack-font
  ];
}
