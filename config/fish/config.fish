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

set -gx EDITOR "vim"

set -gx LANG "en_US.UTF-8"
set -gx LC_ALL "en_US.UTF-8"

set -gx PATH $HOME/.bin $PATH

set -gx PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set -gx MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH

set -gx OMF_PATH $HOME/.local/share/omf
source $OMF_PATH/init.fish

source $HOME/.config/fish/functions/git-aliases.fish
