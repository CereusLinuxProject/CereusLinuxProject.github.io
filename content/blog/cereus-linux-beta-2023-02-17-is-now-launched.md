---
title: "Cereus Linux Beta 2023.02.17 is now launched!"
date: 2023-02-17
categories: [Update]
tags: [xfce]
image: /img/thumb/cereus-xfce-2023.02.17.jpg
---

After 5 months of hard work, the new release is ready, including a lot of improvements, and for the first time, featuring live images for `XFCE` & `Base` editions

Until now, we were focused only in LXQt. This was because our team is small and we prefer to do the work slowly but well done.

## Release notes

- In XFCE, sometimes, when opening a pinned app, it will appear twice in the panel. This can easily fixed unpinning the first and pinning the new one.

- Buttons like “Cereus Support” in Calamares welcome screen does not work. This is because it tries to open Falkon with root privileges and it does need an specific flag to be launched in that conditions.

### LXQt Changelog

- Fixed a critical bug which made live image unable to boot on UEFI systems.
- Fixed a bug which made GRUB installation with ncurses installer fail.
- Branding was renovated.
- Default web browser was changed from Midori to Falkon.
- CopyQ is not longer in the autostart.
- Default kernel was updated from 5.15 to 6.1.
- Default bash plugins (prompt and blesh) were moved to /etc/bashrc.d/.
- Now Emptty is used in live image to autologin (during installation LightDM is enabled and Emptty removed).
- Betterlockscreen is again the lockscreen application, now featuring a GUI configuration tool.
- A new LXQt theme was designed.
- Graphite Kvantum theme was improved.
- Installers now mark current kernel as automatically installed (this is for when we update the default branch in the future).
- The default text editor was changed from Xed to FeatherPad as this last is Qt.
- Calamares now uses Breeze Qt style instead of Kvantum. This fixes the annoying bug were a part of overview section was transparent.
- A tool to rank and select XBPS mirrors was added. You can find it in application menu as “Cereus Linux Mirror Selector” or running manually in terminal with `xrankmirrors -i` (as root).
- GitHub and Chisel mirrors for Cereus repositories were added.
- Up to date packages.
- Plymouth default theme was updated with new logo.
- Default window manager was changed from Openbox to XFWM4, this solves the previous issue with Picom backends depending on hardware.
- System presets and configurations are now packaged in cereus-core.
- GRUB now shows a background image (UEFI).
- F2FS filesystem was removed from Calamares default filesystems as it ends in a broken system (for some reason, this does not happens if using ncurses installer).
- GRUB and LightDM GTK3 Greeter (including settings) are now packaged apart by us in order to have full control of default configuration files.
- Lockscreen background now updates whenever the screen resolution changes.
- Calamares installer now automatically starts in live image.
- QPS was added as default task manager application.
- Fixed a bug where images were opened with Feh instead of LXImage-Qt.
