if status is-interactive
    # Commands to run in interactive sessions can go here
end
zoxide init fish | source

starship init fish | source
enable_transience


function mark_prompt_start --on-event fish_prompt
    echo -en "\e]133;A\e\\"
end

source ~/.config/fish/modus-light.fish


set -Ux FZF_DEFAULT_OPTS "\
  --color=fg:#000000,fg+:#193668,bg:#ffffff,bg+:#f0f0f0 \
  --color=hl:#005e8b,hl+:#008899,info:#afaf87,marker:#00663f \
  --color=prompt:#a0132f,spinner:#7b435c,pointer:#7b435c,header:#87afaf \
  --color=border:#9f9f9f,label:#aeaeae,query:#595959 \
  --border="sharp" --border-label="fzf" --border-label-pos="0" --preview-window="border-sharp" \
  --padding="1" --prompt="> " --marker=">" --pointer="◆" \
  --separator="─" --scrollbar="" --layout="reverse" --info="right""
