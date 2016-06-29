sudo wifi-menu

# basic things
sudo pacman -S lxdm awesome xorg-server xorg-xinit xorg-server-utils mesa xorg-twm xorg-xclock xterm vicious

# start lxdm as a service
sudo systemctl enable lxdm

# programmer stuff
sudo pacman -S git wget openssh

echo "exec awesome" >> ~/.xinitrc

# fix ctrl+c
echo "xterm*selectToClipboard: true" >> ~/.Xdefaults

# configuring awesome 
mkdir -p ~/.config/awesome
cp /etc/xdg/awesome/rc.lua ~/.config/awesome

# laptop specific
sudo pacman -S xf86-video-intel libva-intel-driver xf86-input-synaptics

# moar
sudo pacman -S firefox firejail
