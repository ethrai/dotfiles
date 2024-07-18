echo "Installing yay..."

function v() {
	echo -e "[$0]: \e[32mNow executing:\e[0m"
	echo -e "\e[32m$@\e[0m"
	"$@"
}
v sudo pacman -S --noconfirm --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

printf "Installing desktop packages..."

v yay -S --noconfirm --needed \
	hyprland polkit-kde-agent qt6-wayland \
	hyprcursor hypridle hyprlang hyprlock hyprpaper hyprutils \
	xdg-desktop-portal-hyprland waybar dunst \
	rofi-wayland rofi-emoji-git rofi-power-menu \
	pipewire wireplumber \
	blueman blueman bluez bluez-utils bluez-qt sddm \
	intel-media-driver intel-ucode \
	sof-firmware \
	kitty tmux neovim vivaldi \
	zoxide ripgrep fd bat zsh
