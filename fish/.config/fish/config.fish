if status is-interactive
    set fish_greeting

    # ---EXPORTS---
    export EDITOR='nvim'
    export VISUAL=$EDITOR

    # ---ALIAS---
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
    alias edit-rc='$EDITOR ~/.config/fish/config.fish; source ~/.config/fish/config.fish'
end

# ---RANDOMS??---
/home/div/.local/bin/mise activate fish | source
zoxide init --cmd cd fish | source
