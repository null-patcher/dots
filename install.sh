sudo dnf copr enable wiiznokes/cosmic-applets-unofficial -y 
sudo dnf install cosmic-ext-applet-clipboard-manager dnf-plugins-core -y
sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo -y
sudo dnf install brave-browser -y
