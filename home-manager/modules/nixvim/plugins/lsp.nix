{
    # programs.nixvim.plugins.lsp-lines.enable = true;
    
    programs.nixvim.plugins.lsp = {
      enable = true;
      servers = {
        
        nixd.enable = true;
      };
    };
}
