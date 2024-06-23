#!/bin/bash

CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}

ln -s ${DFILES}/.ideavimrc ~
ln -s ${DFILES}/.gitconfig ~
ln -s ${DFILES}/.zshrc ~
ln -s ${DFILES}/alacritty ${CONFIG}
ln -s ${DFILES}/ohmyposh/ ${CONFIG}
ln -s ${DFILES}/starship ${CONFIG}
ln -s ${DFILES}/nvim ${CONFIG}
ln -s ${DFILES}/tmux ${CONFIG}
ln -s ${DFILES}/waybar ${CONFIG}
ln -s ${DFILES}/hypr ${CONFIG}


# User wayland for electron
ln -s ${DFILES}/electron-flags.conf ${CONFIG}/spotify-flags.conf

