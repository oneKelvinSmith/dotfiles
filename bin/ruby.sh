#! /bin/sh -x

if test $(which asdf); then
    echo "Installing ruby..."
    asdf install ruby 2.3.1
fi

gems=(
    awesome_print
    bundler
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
