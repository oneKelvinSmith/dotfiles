set fish_path $HOME/.oh-my-fish

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

source $fish_path/oh-my-fish.fish

source $HOME/.config/fish/functions/git/git-aliases.fish

set -x PATH $HOME/.rbenv/shims $PATH
set -x PATH $HOME/.rbenv/bin $PATH
rbenv rehash >/dev/null ^&1

# set -x EDITOR "emacsclient --alternate-editor '' --no-wait"

set -x LANG "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

set -x PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set -x MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH
if test -e $HOME/.dircolors
  sh (dircolors $HOME/.dircolors)
end

set -x PATH $HOME/.bin $PATH

Theme "jacaetevha"

Plugin "brew"
# Plugin "emacs"
