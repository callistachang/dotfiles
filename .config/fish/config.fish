function fish_prompt
    powerline-shell --shell bare $status
end

if status is-interactive 
and not set -q TMUX
    exec tmux
end

if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
end

thefuck --alias | source

set -gx GOPATH $HOME/.go
set -gx PATH $PATH /usr/local/go/bin $GOPATH $GOPATH/bin $HOME/.local/bin $HOME/.cargo/bin $HOME/.local/share/solana/install/active_release/bin $HOME/.npm-global/bin
set -gx VISUAL nvim
set -gx EDITOR $VISUAL
set -gx LS_COLORS 'tw=00;33:ow=01;33:'

alias config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cp 'cp -riv'
alias glog 'git log --graph --decorate --oneline'
alias gs 'git status'
alias ll 'ls -hltrpN --color=auto --group-directories-first'
alias mkdir 'mkdir -vp'
alias mv 'mv -iv'
alias ls 'ls --color=auto'

function vi
    nvim $argv
end

#set fish_key_bindings fish_user_key_bindings
fzf_configure_bindings --directory=\ep 
