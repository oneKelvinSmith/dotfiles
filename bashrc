alias code="cd ~/Code"
alias reload="exec $SHELL -l"
alias git="hub"
alias mux="tmuxinator"

export PATH="/$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"

export EDITOR="vim"

[ -e "$HOME/.dircolors" ] && eval "$(dircolors $HOME/.dircolors)"
[ -z "$TMUX" ] && export TERM=xterm-256color

if which hub > /dev/null; then eval "$(hub alias -s)"; fi
