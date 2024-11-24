{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    
    extraPackages = with pkgs; [
      marksman
      nil
    ];
    # Stylix have troubles with theme for helix right now.
  };
}
