{
    # Configure keymap in X11
    services.xserver.xkb = {
        layout = "us,ru";
        variant = "";
        options = "grp:win_space_toggle";
    };
}