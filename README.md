# Description

These are the dotfiles for my retro(futuristic?) dwm rice. It includes fonts, icons, themes, wallpapers and other configurations for desktop utilities.

![Screenshot of the rice](https://github.com/user-attachments/assets/84bcbfa4-20df-4b8a-a63d-6ad8b4e3f291)
*The rice in question, where you can appreciate the theme consistency between Qt (left) and GTK (top right) apps.*

> [!NOTE]
> The installation instructions are meant for Void Linux, but you can just do the equivalent for your distro of choice.

# Install required packages

```bash
sudo xbps-install NetworkManager Thunar thunar-archive-plugin thunar-volman file-roller gvfs alacritty brightnessctl dunst elogind feh pipewire gnome-keyring xdg-utils xfce-polkit xfce4-clipman-plugin xfce4-screenshooter xorg-minimal xrandr xrdb setxkbmap xss-lock pulsemixer redshift
```

In addition to that here are some packages for other software I use as well but aren't strictly necessary:

```bash
sudo xbps-install stow keepassxc seahorse xdg-user-dirs gvfs-gphoto2 gvfs-mtp mpv okular libreoffice qbittorrent strawberry
```

# Other software

- [dwm](https://dwm.suckless.org/)
- [dmenu](https://tools.suckless.org/dmenu/)
- [slstatus](https://tools.suckless.org/slstatus/)
- [slock](https://tools.suckless.org/slock/)

# Setup

I personally use GNU stow:

```bash
cd ~
git clone https://github.com/fskerbs/dotfiles.git .dotfiles
cd .dotfiles && stow --no-folding .
```

# Additional instructions

- You must manually enable steam-fixes.qss in the `Style Sheets` section in qt5ct and qt6ct.

- Follow the instructions on [here](https://docs.voidlinux.org/config/media/pipewire.html) to get ALSA integration working on pipewire, as well as bluetooth.

- Disable the `acpid` service and enable `elogind` for seat management and ACPI power states.

- It wouldn't be a bad idea to install the `ufw` package and set it up.

# Thanks

Special thanks to the following projects:

- [Chicago95](https://github.com/grassmunk/Chicago95)
- [Nashville96](https://github.com/donfaustinocortizone/Nashville96)
- [PixelPerfect](https://github.com/dumol/PixelPerfect)
- [INT 10h fonts](https://int10h.org/oldschool-pc-fonts/)
- [John D. Duncan III's tiled patterns archive](https://cs.gettysburg.edu/~duncjo01/archive/)
