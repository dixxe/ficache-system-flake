{ pkgs, ... }:
{
  programs.vscode = 
  {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; 
    [
      jnoortheen.nix-ide
      golang.go
      waderyan.gitblame
      llvm-vs-code-extensions.vscode-clangd
      ms-vscode.cmake-tools
      vadimcn.vscode-lldb
      donjayamanne.githistory
      samuelcolvin.jinjahtml
    ];
    userSettings = 
    {
      "terminal.integrated.defaultProfile.linux" = "null";
      "terminal.integrated.shell.linux" = "/run/current-system/sw/bin/bash";
      "files.autoSave" = "on";
      "editor.minimap.enabled" = false;
      "clangd.fallbackFlags" = [ 
        "-Wall" 
        "-Wextra" 
        "-Wpedantic" 
        "-Werror" 
        "-I./includes"
        ];
      "editor.rulers" = [
        {
          "column" = 80;
          "color" = "#ff9900";
        }
      ];
    };
  };
}
