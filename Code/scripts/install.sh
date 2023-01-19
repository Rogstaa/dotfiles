sudo xbps-install xorg libXinerama-devel libX11-devel libXft-devel hsetroot xsetroot xclip neovim base-devel git curl vulkan-loader mesa-vulkan-radeon amdvlk mesa-vaapi mesa-vdpau flatpak qutebroser g810-led xtools python3-adblock blender SDL2-devel SDL2_gfx-devel SDL2_image-devel SDL2_mixer-devel SDL2_net-devel SDL2_ttf-devel nodejs clang clang-tools-extra clang-analyzer tree-sitter lua-language-server ccls valgrind cunit gtop doxygen gprof void socklog-void wpa_cute


#add flathub remote
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo add new github remote

#add new ssh key 
ssh-keygen -t ed25519 -C "hoegbo@protonmail.com"
git config --global user.email "hoegbo@protonmail.com"
git config --global user.name "Hoegbo"

# enable services
sudo ln -s /etc/sv/socklog-unix /var/service/
sudo ln -s /etc/sv/dbus /var/service/


# enable bluetooth
# sudo ln -s /etc/sv/bluetoothd /var/service/
# sudo ln -s /etc/sv/bluetoothctl /var/service/
# sudo ln -s /etc/sv/bluetoothd-autoconnect /var/service/

# enable networkmanager
# sudo ln -s /etc/sv/NetworkManager /var/service/

