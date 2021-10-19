{ pkgs, ... }:

{
    # X works, unlike Wayland.
    services.xserver.enable = true;

    # Display manager manages the login screen.
    # Why it’s called a display manager
    # instead of a login manager, I don’t know.
    services.xserver.displayManager.sddm.enable = true;

    # Window manager manages windows after logging in.
    # i3-gaps provides gaps between the windows.
    services.xserver.windowManager.i3.enable = true;
    services.xserver.windowManager.i3.package = pkgs.i3-gaps;

    # Enable the compose key.
    services.xserver.xkbOptions = "ctrl:nocaps, compose:ralt";

    # Enable touchpad support.
    services.xserver.libinput.enable = true;
    services.xserver.libinput.touchpad.naturalScrolling = false;
    services.xserver.libinput.touchpad.tapping = true;

    # Make Qt apps look dark.
    qt5.enable = true;
    qt5.platformTheme = "gtk2";
    qt5.style = "gtk2";
}
