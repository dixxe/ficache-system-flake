{ pkgs, ... }:

{
  programs.helix = {
  
      enable = true;
      extraPackages = [
          pkgs.marksman
          pkgs.rust-analyzer
          pkgs.nil
      ];
  };
}
