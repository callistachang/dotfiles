if status is-interactive
and not set -q TMUX
    exec tmux
end

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

