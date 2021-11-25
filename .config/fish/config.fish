if status is-interactive
and not set -q TMUX
    exec tmux
end

set -gx FZF_DEFAULT_COMMAND "rg --files --hidden --no-ignore-vcs --follow --glob '!.git'"
set -gx GOPATH $HOME/.go
set -gx PATH $PATH /usr/local/go/bin $GOPATH $HOME/.local/bin
set -gx FZF_DEFAULT_OPTS "--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"

alias config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cp 'cp -riv'
alias glog 'git log --graph --decorate --oneline'
alias gs 'git status'
alias ll 'ls -GFhl'
alias mkdir 'mkdir -vp'
alias mv 'mv -iv'
alias vi nvim
alias vim nvi
