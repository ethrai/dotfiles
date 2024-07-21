echo "Installing yay..."

function v() {
	echo -e "[$0]: \e[32mNow executing:\e[0m"
	echo -e "\e[32m$@\e[0m"
	"$@"
}
v sudo pacman -S --noconfirm --needed go git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

printf "Installing desktop packages..."

v yay -S --noconfirm --needed \
	hyprland polkit-kde-agent qt5-wayland \
	network-manager-applet \
	hyprcursor hypridle hyprlang hyprlock hyprpaper hyprutils \
	hyprshot \
	power-profiles-daemon playerctl pamixer brightnessctl pavucontrol \
	xdg-desktop-portal-hyprland waybar dunst \
	wlsunset wl-clipboard cliphist\
	rofi-wayland rofi-emoji-git rofi-power-menu \
	pipewire wireplumber plymouth blueman blueman bluez bluez-utils bluez-qt sddm sof-firmware intel-media-driver intel-ucode \
	kitty tmux neovim vivaldi \
	qt5ct kvantum kvantum-qt5 nwg-look \
	zoxide ripgrep fzf treesitter fd bat zsh \
	ttf-iosevka-term-ss08 ttf-iosevka-ss08 ttf-nerd-fonts-symbols \
	ttf-nerd-fonts-symbols-common ttf-font-awesome \
	noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
	terminus-font stow sudo opendoas \
	reflector yt-dlp zip unzip nodejs \
	telegram-desktop catppuccin-cursors-mocha \
	catppuccin-gtk-theme-mocha kvantum-theme-catppuccin-git \
	sddm-theme-catppuccin docker docker-compose git curl wget \
	papirus-icon-theme glab github-cli httpie \
	luarocks prettier tree-sitter lazygit btop\


v sudo chsh -s "$(which zsh)" "$USER"

v usermod -aG docker "$USER"
v sudo systemctl enable docker.service
v sudo systemctl enable docker.socket

v sudo systemctl enable --now sddm
v sudo systemctl enable --now NetworkManager
v sudo systemctl enable --now bluetooth

printf "Installing desktop packages (done).\n"

echo "Installing tmux plugin manager"
v git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Installing flatpak apps"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.saivert.pwvucontrol


printf "Symlinking dotfiles..."
v stow -v ~/dotfiles
