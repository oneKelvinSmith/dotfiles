#! /bin/sh -x

version=2.5.1

echo "Installing ruby..."
asdf install ruby $version
asdf global ruby $version

gems=(
    awesome_print
    bundler
    pry
    rails
    rubocop
    rubycritic
    tmuxinator
)

echo "Installing gems..."
gem install ${gems[@]}
