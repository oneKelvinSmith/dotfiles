#! /bin/sh -x

echo "Installing ruby..."
asdf install ruby 2.3.1

gems=(
    awesome_print
    bundler
    pry
    rails
    rubocop
    tmuxinator
)

echo "Installing gems..."
gem install ${gems[@]}
