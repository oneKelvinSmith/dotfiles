set fish_greeting ""

set fish_color_autosuggestion 928374
set fish_color_command 8ec07c
set fish_color_comment a89984
set fish_color_cwd fabd2f
set fish_color_cwd_root d79921
set fish_color_end normal
set fish_color_error fb4934
set fish_color_escape 928374
set fish_color_history_current d65d0e
set fish_color_host 458588
set fish_color_match b8bb26
set fish_color_normal normal
set fish_color_operator	83a598
set fish_color_param normal
set fish_color_quote b8bb26
set fish_color_redirection normal
set fish_color_search_match normal
set fish_color_status b16286
set fish_color_user -o d3869b
set fish_color_valid_path --underline
set fish_pager_color_progress fe8019

set -gx EDITOR    nvim
set -gx COLORTERM truecolor

source (brew --prefix asdf)/asdf.fish

set -gx GOPATH    $HOME/.go
set -gx GOROOT    (go env GOROOT)
set -gx YARNPATH  (yarn global dir)/node_modules/

set -g fish_user_paths $GOPATH/bin      $fish_user_paths
set -g fish_user_paths $GOROOT/bin      $fish_user_paths
set -g fish_user_paths $YARNPATH/.bin   $fish_user_paths
set -g fish_user_paths $HOME/.local/bin $fish_user_paths
set -g fish_user_paths /usr/local/sbin  $fish_user_paths
