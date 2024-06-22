#!/bin/bash

ln -s ${DFILES}/.ideavimrc ~
ln -s ${DFILES}/.gitconfig ~
ln -s ${DFILES}/.zshrc ~
ln -s ${DFILES}/alacritty ${XDG_CONFIG_HOME}
ln -s ${DFILES}/ohmyposh/ ${XDG_CONFIG_HOME}
ln -s ${DFILES}/starship ${XDG_CONFIG_HOME}
ln -s ${DFILES}/nvim ${XDG_CONFIG_HOME}
ln -s ${DFILES}/tmux ${XDG_CONFIG_HOME}
ln -s ${DFILES}/waybar ${XDG_CONFIG_HOME}
ln -s ${DFILES}/hypr ${XDG_CONFIG_HOME}

