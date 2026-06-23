set fish_greeting

fish_add_path ~/.local/bin

mise activate fish | source
zoxide init --cmd cd fish | source

if status is-interactive
    fish_ssh_agent

    set BOOTSTRAP_DONE ~/.config/fish/.bootstrapped

    if not test -f $BOOTSTRAP_DONE
        echo "Running first-time setup..."
        bash ~/.config/fish/bootstrap.sh
        touch $BOOTSTRAP_DONE
    end

    # ---EXPORTS---
    set -gx VISUAL micro
    set -gx EDITOR "$VISUAL"

    # Source WSL exports if in WSL env
    if test -f /proc/version; and grep -qi microsoft /proc/version
        set -gx OLLAMA_HOST http://(ip route show default | awk '{print $3}'):11434
        set -gx BROWSER /mnt/c/Windows/explorer.exe
    end

    # ---EZA (ls replacements)---
    alias ls="eza --color=always --group-directories-first --icons"
    alias l="eza --color=always --group-directories-first --icons"
    alias la="eza -a --color=always --group-directories-first --icons"
    alias ll="eza -la --color=always --group-directories-first --icons"
    alias lt="eza -aT --color=always --group-directories-first --icons"
    alias l.="eza -a | rg -e '^\.'"

    # ---BAT (cat replacement)---
    if command -q apt
        alias cat="batcat"
    else
        alias cat="bat"
    end

    # ---MISC---
    alias tarnow="tar -acf"
    alias untar="tar -zxvf"
    alias grep="rg --color=auto"
    alias df="df -h"
    alias du="du -sh"
    alias ports="ss -tulnp"
    alias myip="curl 4.ident.me"

    # ---NAVIGATION---
    alias mkdir="mkdir -p"

    # ---CONFIG SHORTCUTS---
    alias edit-rc="$EDITOR ~/.config/fish/config.fish; source ~/.config/fish/config.fish"
    alias reload-rc="source ~/.config/fish/config.fish"

    alias edit-tmux="$EDITOR ~/.tmux.conf; tmux source ~/.tmux.conf"
    alias reload-tmux="tmux source ~/.tmux.conf"

    # ---TMUX---
    alias ta="tmux attach"
    alias tls="tmux ls"
    alias tn="tmux new -s"

    # ---GIT---
    alias g="git"
    alias gs="git status"
    alias gc="git commit -m"
    alias gp="git push"
    alias gl="git log --oneline --graph --decorate"
    alias gpl="git pull"
    alias gst="git stash"
    alias gco="git checkout"

    # ---DOCKER---
    alias dps="docker ps"
    alias dcu="docker compose up -d"
    alias dcd="docker compose down"
    alias dcl="docker compose logs -f"
    alias dce="docker compose exec"
    alias dcr="docker compose restart"
end
