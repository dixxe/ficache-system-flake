{
  programs.nixvim = {
    enable = true;
    plugins = {
      web-devicons.enable = true;
      which-key.enable = true;
      gitsigns.enable = true;
      trouble.enable = true;
    };
    defaultEditor = true;
    # Color schemes managed by stylix! :D
    
  };
  
  imports = [
    ./plugins-bundle.nix 
  ]; 
}
