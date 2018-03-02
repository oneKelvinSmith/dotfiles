#! /bin/sh -x

version=2.4.3

echo "Installing ruby..."
asdf install ruby $version
asdf global ruby $version

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
