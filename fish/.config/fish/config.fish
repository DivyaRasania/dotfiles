# ---RANDOMS??---
set fish_greeting
fish_add_path ~/.local/bin
mise activate fish | source
zoxide init --cmd cd fish | source

if status is-interactive
    # ---EXPORTS---
    export EDITOR='nvim'
    export VISUAL=$EDITOR

    # ---ALIAS---
    alias l='eza --color=always --group-directories-first --icons' # preferred listing
    alias la='eza -a --color=always --group-directories-first --icons' # all files and dirs
    alias ll='eza -la --color=always --group-directories-first --icons' # long format
    alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
    alias l.="eza -a | grep -e '^\.'" # show only dotfiles
    alias cat='bat --theme zenburn'
    alias tarnow='tar -acf '
    alias untar='tar -zxvf '
    alias grep='grep --color=auto'
    alias edit-rc='$EDITOR ~/.config/fish/config.fish; source ~/.config/fish/config.fish'
end
