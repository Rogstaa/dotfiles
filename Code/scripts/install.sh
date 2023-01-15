sudo xbps-install xorg libXinerama-devel libX11-devel libXft-devel hsetroot xsetroot xclip pulseaudio pavucontrol neovim base-devel git curl vulkan-loader mesa-vulkan-radeon amdvlk mesa-vaapi mesa-vdpau flatpak qutebroser g810-led xtools python3-adblock blender


#add flathub remote
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo add new github remote

#add new ssh key 
ssh-keygen -t ed25519 -C "hoegbo@protonmail.com"
git config --global user.email "hoegbo@protonmail.com"
git config --global user.name "Hoegbo"
