sudo xbps-install xorg libXinerama-devel libX11-devel libXft-devel hsetroot xsetroot xclip neovim base-devel git curl vulkan-loader mesa-vulkan-radeon amdvlk mesa-vaapi mesa-vdpau flatpak qutebroser g810-led xtools python3-adblock blender SDL2-devel SDL2_gfx-devel SDL2_image-devel SDL2_mixer-devel SDL2_net-devel SDL2_ttf-devel nodejs clang clang-tools-extra clang-analyzer tree-sitter lua-language-server ccls


#add flathub remote
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo add new github remote

#add new ssh key 
ssh-keygen -t ed25519 -C "hoegbo@protonmail.com"
git config --global user.email "hoegbo@protonmail.com"
git config --global user.name "Hoegbo"
