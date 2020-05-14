set fish_greeting ""

set -gx EDITOR    nvim
set -gx COLORTERM truecolor

source (brew --prefix asdf)/asdf.fish

set -gx GOPATH   $HOME/.go
set -gx GOROOT   (go env GOROOT)
set -gx YARNPATH (yarn global dir)/node_modules/

set -gx PATH $GOPATH/bin      $PATH
set -gx PATH $GOROOT/bin      $PATH
set -gx PATH $YARNPATH/.bin   $PATH
set -gx PATH $HOME/.local/bin $PATH
set -gx PATH /usr/local/sbin  $PATH
set -gx PATH /usr/local/opt/mongodb-community@3.4/bin $PATH
