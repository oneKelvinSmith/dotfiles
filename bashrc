alias reload="exec $SHELL -l"

export EDITOR nvim
export COLORTERM truecolor

export CARGOPATH=$HOME/.cargo

export PATH=/$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
export PATH=$CARGOPATH/bin:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
