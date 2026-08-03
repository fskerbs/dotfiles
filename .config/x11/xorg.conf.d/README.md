# X11 configuration directory

## .conf files

Here's what each .conf file does

### 00-keyboard.conf / 00-keyboard-es.conf

Bind the Caps Lock key to the Super key. Choose only one. The one with the es suffix sets the spanish keyboard layout as the default.

### 10-nvidia-drm-outputclass.conf

Enable NVIDIA Optimus compatibility and use NVIDIA graphics only.

### 10-serverflags.conf

Set up idle time until the screen goes into suspend mode.

### 20-intel.conf

Set up modesetting driver for Intel GPU.

### 30-touchpad.conf

Set up touchpad to use libinput driver and allow tapping.

### 40-mouse-accel.conf

Disable mouse acceleration.

## Apply .conf files

If you want to use these config files you can just symlink them. For instance:

```bash
sudo mkdir -p /etc/X11/xorg.conf.d
sudo ln -s $XDG_CONFIG_HOME/x11/xorg.conf.d/*.conf /etc/X11/xorg.conf.d
```
