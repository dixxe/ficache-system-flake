{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    
    extraPackages = with pkgs; [
      marksman
      nil
      gopls
    ];
    # Stylix have troubles with theme for helix right now.
  };
}
