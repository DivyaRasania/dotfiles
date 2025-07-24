if status is-interactive
    set fish_greeting

    # ---EXPORTS---
    export EDITOR='nvim'
    export VISUAL=$EDITOR

    # ---INSTALLERS---
    # vencord: `sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"`
    # catppuccin-kde: `git clone --depth=1 https://github.com/catppuccin/kde catppuccin-kde && cd catppuccin-kde`

    # ---ALIAS---
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
    alias edit-rc='$EDITOR ~/.config/fish/config.fish; source ~/.config/fish/config.fish'
end

# ---RANDOMS??---
/home/div/.local/bin/mise activate fish | source
zoxide init --cmd cd fish | source
