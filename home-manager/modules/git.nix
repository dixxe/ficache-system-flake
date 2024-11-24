{ pkgs, ... }:

{
    programs.git = {
        enable = true;
        userName = "dixxe";
        userEmail = "max.pan@tuta.io";
        extraConfig = {
            credential.helper = [
                "cache --timeout 21600"
                "oauth"
            ]; 
        signing.signByDefault = true;            
        };
    };

    home.packages = with pkgs; [ # Pretty wonky, but idk
        git-credential-oauth     # how to make it better
    ];
}
