{ pkgs, ... }:

{
   fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "Ubuntu" ]; })
    noto-fonts
    noto-fonts-cjk
    noto-fonts-extra
    hack-font
  ];
}
