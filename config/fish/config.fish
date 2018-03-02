set fish_greeting ""

set fish_color_autosuggestion 75715E
set fish_color_command A6E22E
set fish_color_comment 75715E
set fish_color_cwd A6E22E
set fish_color_cwd_root F92672
set fish_color_end normal
set fish_color_error F92672
set fish_color_escape A1EFE4
set fish_color_history_current A1EFE4
set fish_color_host A1EFE4
set fish_color_match A1EFE4
set fish_color_normal normal
set fish_color_operator A1EFE4
set fish_color_param 66D9EF
set fish_color_quote E6DB74
set fish_color_redirection normal
set fish_color_search_match normal
set fish_color_status F92672
set fish_color_user -o A6E22E
set fish_color_valid_path --underline

set -gx EDITOR "nvim"
set -gx COLORTERM "truecolor"

set -gx LANG   "en_US.UTF-8"
set -gx LC_ALL "en_US.UTF-8"

source $HOME/.asdf/asdf.fish

set -gx CARGOPATH $HOME/.cargo
set -gx GOPATH (go env GOPATH)
set -gx GOROOT (go env GOROOT)

set -g fish_user_paths $CARGOPATH/bin  $fish_user_paths
set -g fish_user_paths $GOPATH/bin     $fish_user_paths
set -g fish_user_paths $HOME/.bin      $fish_user_paths
set -g fish_user_paths /usr/local/sbin $fish_user_paths
