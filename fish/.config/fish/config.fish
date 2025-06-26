if status is-interactive
	set fish_greeting

	export EDITOR='nvim'
	export VISUAL=$EDITOR

	alias ll='ls -alF'
	alias la='ls -A'
	alias l='ls -CF'
	alias edit-rc='$EDITOR ~/.config/fish/config.fish; source ~/.config/fish/config.fish'
	alias mcc='ssh -i ~/.ssh/oci-mc opc@207.211.165.205'
end
/home/div/.local/bin/mise activate fish | source
