#! /bin/sh -x

if test ! $(which rbenv); then
    echo "Installing ruby..."
    brew install rbenv
    rbenv install 2.2.4
fi

gems=(
    pry
    awesome_print
    tmuxinator
    rails
    rubocop
)

echo "Installing gems..."
gem install ${gems[@]}
