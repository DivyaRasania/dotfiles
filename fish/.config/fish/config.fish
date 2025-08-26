# ---RANDOMS??---
set fish_greeting

fish_add_path ~/.local/bin

mise activate fish | source
zoxide init --cmd cd fish | source

fish_ssh_agent

if status is-interactive
    # ---EXPORTS---
    set -Ux VISUAL "nvim"
    set -Ux EDITOR "$VISUAL"


    # ---ALIAS---
    abbr -a l "eza --color=always --group-directories-first --icons" # preferred listing
    abbr -a la "eza -a --color=always --group-directories-first --icons" # all files and dirs
    abbr -a ll "eza -la --color=always --group-directories-first --icons" # long format
    abbr -a lt "eza -aT --color=always --group-directories-first --icons" # tree listing
    abbr -a l. "eza -a | grep -e '^\.'" # show only dotfiles
    abbr -a cat "bat --theme zenburn"
    abbr -a tarnow "tar -acf "
    abbr -a untar "tar -zxvf "
    abbr -a grep "grep --color=auto"
    abbr -a edit-rc "$EDITOR ~/.config/fish/config.fish; source ~/.config/fish/config.fish"
end
