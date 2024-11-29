{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      ms-dotnettools.vscode-dotnet-runtime
      ms-dotnettools.csharp
      golang.go
      waderyan.gitblame
    ];
    userSettings = {
      "files.autoSave" = "on";
      "editor.minimap.enabled" = false;
    };
  };
}
