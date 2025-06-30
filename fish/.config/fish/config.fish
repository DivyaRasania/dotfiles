if status is-interactive
    set fish_greeting

    export EDITOR='nvim'
    export VISUAL=$EDITOR

    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
    alias edit-rc='$EDITOR ~/.config/fish/config.fish; source ~/.config/fish/config.fish'
end
/home/div/.local/bin/mise activate fish | source
fish_ssh_agent
