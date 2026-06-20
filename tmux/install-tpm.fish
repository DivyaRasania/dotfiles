#!/usr/bin/env fish

set repo_url "https://github.com/tmux-plugins/tpm"
set dest_url "$HOME/.tmux/plugins/tpm"

git clone $repo_url $dest_url

if test $status -eq 0
    echo "Clone succeeded"
else
    echo "Clone failed"
end
