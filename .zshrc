# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"
# source "${HOME}/.zsh/catppuccin-suggestions.zsh"

# Enable plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
# zinit ice depth = 1; zinit light jeffreytse/zsh-vi-mode

export VI_MODE_SET_CURSOR=true

# Plugins configuraiton
# fzf theme for catppuccin
 export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# Add snipets
zinit snippet OMZP::git
zinit snippet OMZP::vscode
zinit snippet OMZP::golang

# Autoload completions
autoload -U compinit && compinit

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':compeltion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward


# History
HISTSIZE=5000
HISTFILE="${HOME}/.zsh_history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases

alias ls='ls --color'
alias l='ls -lah'
alias zsrc='. ~/.zshrc'
alias md='mkdir'
alias clr='clear'
alias d='docker'
alias gcs='gh copilot suggest'
alias v='nvim'
alias cd='z'
alias grep='rg'
alias cat='bat'
alias kr='pkill -10 kitty'

export XDG_CONFIG_HOME="${HOME}/.config"
export STARSHIP_CONFIG="${XDG_CONFIG_HOME}/starship/starship.toml"
export DFILES="${HOME}/dotfiles"

export EDITOR="/usr/bin/nvim"
# Path variables
path+="${HOME}/go/bin"
path+="${HOME}/.local/bin"
path+="${HOME}/.local/share/JetBrains/Toolbox/scripts"
path+="${HOME}/.cargo/bin"
export PATH


# Shell integrations here
# eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
# eval "$(starship init zsh)"
# fzf
source <(fzf --zsh)
# zoxide
eval "$(zoxide init zsh)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /usr/share/nvm/init-nvm.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
