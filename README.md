# Description

These are the dotfiles for my retro(futuristic?) dwm rice. It includes fonts, icons, themes, wallpapers and other configurations for desktop utilities.

![Screenshot of the rice](https://raw.githubusercontent.com/fskerbs/dotfiles/refs/heads/screenshot/myrice.png)
*The rice in question, where you can appreciate the theme consistency between Qt (left) and GTK (top right) apps.*

# Installation

The installation instructions are meant for Void Linux, but you can just do the equivalent for your distro of choice.

## Install required packages

```bash
sudo xbps-install NetworkManager network-manager-applet Thunar thunar-archive-plugin thunar-volman file-roller gvfs gtk+3 alacritty vim-x11 brightnessctl dunst elogind dbus feh pipewire gnome-keyring xdg-utils xfce-polkit xfce4-clipman-plugin xfce4-screenshooter xorg-minimal xrandr xrdb setxkbmap xss-lock pulsemixer redshift qt5ct qt6ct xdg-user-dirs
```

In addition to that here are some packages for other software I use as well but aren't strictly necessary:

```bash
sudo xbps-install bluez keepassxc seahorse gvfs-gphoto2 gvfs-mtp mpv okular libreoffice qbittorrent strawberry
```

### Other software

- [dwm](https://dwm.suckless.org/)
- [dmenu](https://tools.suckless.org/dmenu/)
- [slstatus](https://tools.suckless.org/slstatus/)
- [slock](https://tools.suckless.org/slock/)
- [librewolf](https://github.com/index-0/librewolf-void)

## Set up dotfiles

I personally use GNU stow:

```bash
cd ~
git clone https://github.com/fskerbs/dotfiles.git .dotfiles
cd .dotfiles && stow --no-folding .
```

## Additional instructions

- Ensure that you have your GPU drivers set up, as otherwise alacritty will fail to start since it's GPU accelerated.

- Enable the `dbus` service, then enable `NetworkManager`. Make sure that the `dhcpcd` & `wpa_supplicant` services are disabled to avoid conflicts. 

- Enable the `elogind` service for seat management and ACPI power states. Make sure to disable the `acpid` service.

- You must manually enable steam-fixes.qss in the `Style Sheets` tab in qt5ct and qt6ct.

- Follow the instructions on [here](https://docs.voidlinux.org/config/media/pipewire.html) to get ALSA integration working on pipewire, as well as bluetooth.

- Edit `~/.config/x11/xinitrc` to add stuff like xrandr commands or your window manager of choice. Also symlink files in `~/.config/x11/xorg.conf.d` to `/etc/X11/xorg.conf.d` as needed.

- Run `xdg-user-dirs-update` to generate XDG directories (i.e., Downloads, Documents, etc.).

- It wouldn't be a bad idea to install the `ufw` package and set it up.

# Thanks

Special thanks to the following projects:

- [Chicago95](https://github.com/grassmunk/Chicago95)
- [Nashville96](https://github.com/donfaustinocortizone/Nashville96)
- [Miami26](https://github.com/dhampirave/Miami26)
- [PixelPerfect](https://github.com/dumol/PixelPerfect)
- [INT 10h fonts](https://int10h.org/oldschool-pc-fonts/)
- [John D. Duncan III's tiled patterns archive](https://cs.gettysburg.edu/~duncjo01/archive/)
