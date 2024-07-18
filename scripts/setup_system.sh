echo "Installing yay..."

function v() {
	echo -e "[$0]: \e[32mNow executing:\e[0m"
	echo -e "\e[32m$@\e[0m"
	"$@"
}
v sudo pacman -S --noconfirm --needed go git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

printf "Installing desktop packages..."

v yay -S --noconfirm --needed \
	hyprland polkit-kde-agent qt6-wayland \
	hyprcursor hypridle hyprlang hyprlock hyprpaper hyprutils \
	power-profiles-daemon playerctl pamixer brightnessctl pavucontrol \
	xdg-desktop-portal-hyprland waybar dunst \
	wlsunset wl-clipboard \
	rofi-wayland rofi-emoji-git rofi-power-menu \
	pipewire wireplumber plymouth blueman blueman bluez bluez-utils bluez-qt sddm sof-firmware intel-media-driver intel-ucode \
	kitty tmux neovim vivaldi \
	qt6ct kvantum nwg-look \
	zoxide ripgrep fzf treesitter fd bat zsh \
	ttf-iosevka-term-ss04 ttf-nerd-fonts-symbols \
	ttf-nerd-fonts-symbols-common ttf-font-awesome \
	noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
	terminus-font stow sudo opendoas \
	reflector yt-dlp zip unzip nodejs \
	telegram-desktop catppuccin-cursors-mocha \
	catppuccin-gtk-theme-mocha kvantum-theme-catppuccin-git \
	sddm-theme-catppuccin docker docker-compose git curl wget

v sudo chsh -s "$(which zsh)" "$USER"

v usermod -aG docker "$USER"
v sudo systemctl enable docker.service
v sudo systemctl enable docker.socket

v sudo systemctl enable --now sddm
v sudo systemctl enable --now NetworkManager

printf "Installing desktop packages (done).\n"

printf "Symlinking dotfiles..."
v stow -v ~/dotfiles
