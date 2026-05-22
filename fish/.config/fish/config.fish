# ---RANDOMS??---
set fish_greeting

fish_add_path ~/.local/bin

mise activate fish --shims | source
mise activate fish | source
zoxide init --cmd cd fish | source

fish_ssh_agent

if status is-interactive
    # ---EXPORTS---
    set -Ux VISUAL micro
    set -Ux EDITOR "$VISUAL"

    # ---ALIAS---
    alias ls="eza --color=always --group-directories-first --icons" # preferred listing
    alias l="eza --color=always --group-directories-first --icons" # preferred listing
    alias la="eza -a --color=always --group-directories-first --icons" # all files and dirs
    alias ll="eza -la --color=always --group-directories-first --icons" # long format
    alias lt="eza -aT --color=always --group-directories-first --icons" # tree listing
    alias l.="eza -a | rg -e '^\.'" # show only dotfiles
    
    if command -q apt
        alias cat="batcat"
    else
        alias cat="bat"
    end

    alias tarnow="tar -acf "
    alias untar="tar -zxvf "
    alias grep="rg --color=auto"
    
    alias edit-rc="$EDITOR ~/.config/fish/config.fish; source ~/.config/fish/config.fish"
end
