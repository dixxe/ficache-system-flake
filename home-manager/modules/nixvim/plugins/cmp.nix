{
    programs.nixvim.plugins.cmp-nvim-lsp.enable = true; 
    programs.nixvim.plugins.cmp-vsnip.enable = true;

    programs.nixvim.plugins.cmp = {
      enable = true;
      autoEnableSources = true;

      settings.sources = [
        {name = "nvim_lsp";}
        {name= "vsnip";}
        {name = "path";}
        {name = "buffer";}
      ];

      settings.mapping = {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      };
    };
}
