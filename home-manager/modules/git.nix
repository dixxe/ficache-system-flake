{ pkgs, ... }:

{
    programs.git = {
        enable = true;
        userEmail = "dixxe.mail@proton.me"; # Hello there :D.
        userName = "ficache";
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
        gnupg
        pinentry-qt
        meld
    ];
}
