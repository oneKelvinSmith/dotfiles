#! /bin/sh -x

if test ! $(which rbenv); then
    echo "Installing ruby..."
    brew install rbenv
    rbenv install 2.2.3
fi

gems=(
    pry
    tmuxinator
    rails
    rubocop
    # ruby-lint
)

echo "Installing gems..."
gem install ${gems[@]}
