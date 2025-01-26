if status is-interactive
    # Commands to run in interactive sessions can go here
end
zoxide init fish | source

starship init fish | source
enable_transience


function mark_prompt_start --on-event fish_prompt
    echo -en "\e]133;A\e\\"
end
