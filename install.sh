sudo pacman -S nvim base-devel git 
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
sudo cp ./pacman.conf /etc/ 
sudo pacman -Syu
sudo pacman -S yay
yay -S hyprland xdg-desktop-portal-hyprland wayle-bin hyprpolkitagent helium-browser-bin yazi kitty kvantum nautilus wl-clipboard kio-admin power-profiles-daemon gtk3 gtk4 nwg-look matugen awww libnotify rofi brightnessctl 
cp -r ./.config/* /home/$USER/.config/

