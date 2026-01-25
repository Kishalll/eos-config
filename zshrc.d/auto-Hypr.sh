# Auto start Hyprland on tty1
#if [[ -z "$WAYLAND_DISPLAY" && -z "$DISPLAY" && "$(tty)" == "/dev/tty1" ]]; then
#  exec start-hyprland
#fi

