#!/bin/bash

sudo dnf upgrade -y
sudo dnf copr enable -y solopasha/hyprland 
sudo dnf install -y hyprland hyprlock hyprpaper hyprshot xdg-desktop-portal-hyprland waybar uwsm waypaper cliphist hyprland tuned tuned-ppd kitty hyprpolkitagent pavucontrol alsa-sof-firmware alsa-utils blueman --skip-broken
sudo dnf -y install ninja-build cmake gcc make unzip gettext curl glibc-gconv-extra
mkdir  -p ~/code/personal
cd ~/code/personal
git clone https://github.com/null-patcher/dots
cp -r ~/code/personal/dots/.config/* ~/.config/
git clone https://github.com/neovim/neovim && cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
sudo dnf install -y fish
chsh -s /usr/bin/fish
sudo dnf copr enable -y dejan/lazygit
sudo dnf install -y lazygit
sudo dnf copr enable -y scottames/ghostty
sudo dnf install -y ghostty
sudo dnf copr enable -y sneexy/zen-browser
sudo dnf install -y zen-browser
sudo dnf install dunst wofi fzf fd
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf install steam gamescope -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install edc/bass
nvm install stable && nvm use stable
sudo dnf install yarnpkg
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

