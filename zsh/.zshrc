# INSTALL BEFORE USING THIS zshrc
# Zap: zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
# mise: curl https://mise.run | sh

# ---ZAP PLUGINS---
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"
plug "jirutka/zsh-shift-select"
plug "MichaelAquilina/zsh-you-should-use"
plug "zap-zsh/supercharge"
plug "romkatv/powerlevel10k"

# Load and initialise completion system
autoload -Uz compinit
compinit

# ---EXPORTS---
export VISUAL='nvim'
export EDITOR=$VISUAL

# ---KEYBINDS---
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down
# bindkey '^[[1;5C' forward-word
# bindkey '^[[1;5D' backward-word
# bindkey '^[[3;5~' kill-word
# bindkey '^H' backward-kill-word

# ---ALIASES---
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias edit-rc='$EDITOR ~/.zshrc; source ~/.zshrc'
