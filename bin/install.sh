#!/bin/sh

dir="${bash_source%/*}"
if [[ ! -d "$dir" ]]; then
    dir="$PWD";
fi

# install system binaries including rbenv & rcm
. "$dir/asdf.sh"

# install system binaries including rbenv & rcm
. "$dir/brew.sh"

# symlink dotfiles
rcup

# install node and system packages
. "$dir/node.sh"

# install ruby and system gems
. "$dir/ruby.sh"

# install apps
. "$dir/cask.sh"

# add brew shell to /etc/shells & use fish shell
echo "/usr/local/bin/bash" | sudo tee -a /etc/shells
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
