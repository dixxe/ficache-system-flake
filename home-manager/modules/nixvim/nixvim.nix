{
  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    # Color schemes managed by stylix! :D
    
  };
  
  imports = [
    ./plugins-bundle.nix 
  ]; 
}
