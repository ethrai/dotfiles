#!/bin/bash

# !!!WRITTEN BY LLM!!!

# Exit immediately if a command exits with a non-zero status,
# treat unset variables as errors, and catch errors in pipelines
set -euo pipefail

# Variables
PKGLIST="/home/sergio/dotfiles/pkglist.txt"
YAY_REPO="https://aur.archlinux.org/yay.git"
TEMP_DIR=$(mktemp -d)
YAY_DIR="$TEMP_DIR/yay"

# Function to clean up temporary directory on exit
cleanup() {
	rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

# Function to display error messages
error() {
	echo "Error: $1" >&2
	exit 1
}

# Check if running on Arch-based system by looking for pacman
if ! command -v pacman &>/dev/null; then
	error "This script requires pacman (Arch Linux or derivative)."
fi

# Check if yay is already installed
if command -v yay &>/dev/null; then
	echo "yay is already installed. Skipping AUR installation."
else
	echo "Installing base-devel and git if not already installed..."
	sudo pacman -S --needed --noconfirm git base-devel go

	echo "Cloning yay repository..."
	git clone "$YAY_REPO" "$YAY_DIR"

	echo "Building and installing yay..."
	cd "$YAY_DIR"
	makepkg -si --noconfirm

	echo "yay installation completed."
fi

# Check if pkglist.txt exists
if [[ ! -f "$PKGLIST" ]]; then
	error "Package list file not found at $PKGLIST."
fi

echo "Installing packages from $PKGLIST..."
# Install packages; --noconfirm can be added to automate
yay -S --needed - <"$PKGLIST"

echo "All packages have been installed successfully."
