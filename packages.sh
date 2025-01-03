# Install yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay || exit
makepkg -si

# Install packages from pkglist.txt
yay -S --needed - </home/sergio/dotfiles/pkglist.txt
