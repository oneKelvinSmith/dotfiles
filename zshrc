alias reload="exec $SHELL -l"

export EDITOR nvim
export COLORTERM truecolor

export CARGOPATH=$HOME/.cargo
export GOPATH=$HOME/.go
export GOROOT=$(go env GOROOT)

export PATH=/$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
export PATH=/usr/local/heroku/bin:$PATH
export PATH=$CARGOPATH/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$GOROOT/bin:$PATH
