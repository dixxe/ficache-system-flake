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
    
    opts = {
      relativenumber = true;
      clipboard = "unnamedplus";
      tabstop = 2;
      softtabstop = 2;
      showtabline = 2;
    };
  };
  
  imports = [
    ./keymaps.nix
    ./plugins-bundle.nix 
  ]; 
}
