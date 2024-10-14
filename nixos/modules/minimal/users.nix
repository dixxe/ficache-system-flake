{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.ficache = {
        isNormalUser = true;
        description = "ficache";
        extraGroups = [ "networkmanager" "wheel" "docker" "vboxusers" ];
    };
}
