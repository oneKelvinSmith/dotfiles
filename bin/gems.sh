#! /bin/sh -x

if test ! $(which rbenv); then
    echo "Installing ruby..."
    brew install rbenv
    rbenv install 2.3.0
fi

gems=(
    awesome_print
    middleman
    octopress
    pry
    rails
    rubocop
    tmuxinator

    # gosu
    gosu
    chipmunk
)

echo "Installing gems..."
gem install ${gems[@]}
