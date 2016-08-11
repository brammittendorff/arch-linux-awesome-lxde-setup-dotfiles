sudo wifi-menu

# basic things
sudo pacman -S lxdm awesome xorg-server xorg-xinit xorg-server-utils mesa xorg-twm xorg-xclock xterm vicious

# start lxdm as a service
sudo systemctl enable lxdm

# enable dhcpcd for the wired network connection
systemctl enable dhcpcd.service
systemctl start dhcpcd.service

# programmer stuff
sudo pacman -S git wget openssh

echo "exec awesome" >> ~/.xinitrc

# fix ctrl+c
echo "xterm*selectToClipboard: true" >> ~/.Xdefaults

# configuring awesome 
mkdir -p ~/.config/awesome
cp /etc/xdg/awesome/rc.lua ~/.config/awesome

# video card drivers
sudo pacman -S xf86-video-intel libva-intel-driver

# touchpad drivers
sudo pacman -S xf86-input-synaptics

# moar
sudo pacman -S firefox firejail

# AUR
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
cd ..

# update yaourt
yaourt -Syu --devel --aur
