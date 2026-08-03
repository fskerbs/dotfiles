# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# Default applications
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="librewolf"

# XDG configuration
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# X11 configuration
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"

# Additional configuration
export GTK_THEME=Nashville96-Steam
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export XCURSOR_PATH="$HOME/.local/share/icons"
export QT_QPA_PLATFORMTHEME=qt5ct

# Hardware acceleration (Uncomment if on Intel HD Graphics)
# export LIBVA_DRIVER_NAME=iHD

# Start X11 if login on tty1
[ "$(tty)" = "/dev/tty1" ] && startx
