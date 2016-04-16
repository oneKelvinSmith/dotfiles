alias code="cd ~/Code"
alias reload="exec $SHELL -l"
alias git="hub"
alias mux="tmuxinator"

export PATH="/$HOME/.bin/:usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export NVM_DIR="$HOME/.nvm"

export EDITOR="vim"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -e "$HOME/.dircolors" ] && eval "$(dircolors $HOME/.dircolors)"
[ -z "$TMUX" ] && export TERM=xterm-256color

if which hub > /dev/null; then eval "$(hub alias -s)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi
