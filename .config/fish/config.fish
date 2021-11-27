if status is-interactive
and not set -q TMUX
    exec tmux
end

set -gx FZF_DEFAULT_COMMAND "rg --files --hidden --no-ignore-vcs --follow --glob '!.git'"
set -gx GOPATH $HOME/.go
set -gx PATH /usr/local/go/bin $GOPATH $HOME/.local/bin $PATH
set -gx FZF_DEFAULT_OPTS "--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
set -gx VISUAL nvim
set -gx EDITOR $VISUAL
set -gx LS_COLORS 'tw=00;33:ow=01;33:' $LS_COLORS

alias config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cp 'cp -riv'
alias glog 'git log --graph --decorate --oneline'
alias gs 'git status'
alias ll 'ls -GFhl --color'
alias mkdir 'mkdir -vp'
alias mv 'mv -iv'
alias vi nvim
alias vim nvim
alias ls 'ls --color'
