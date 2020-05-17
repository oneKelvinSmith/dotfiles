set fish_greeting ""

set -gx EDITOR    nvim
set -gx COLORTERM truecolor

if not set -q fish_user_paths
  # unset the universal variable with:
  # set -Ue fish_user_paths

  set -Uxp fish_user_paths /usr/local/bin
  set -Uxp fish_user_paths /usr/local/sbin
  set -Uxp fish_user_paths /usr/local/opt/mongodb-community@3.4/bin
end

set -p PATH $HOME/.cargo/bin
set -p PATH $HOME/.local/bin 
set -p PATH $HOME/.nodenv/shims
set -p PATH $HOME/.rbenv/shims

