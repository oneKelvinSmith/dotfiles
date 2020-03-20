#! /bin/sh -x

version=2.6.1

if ! test -x "$(command -v asdf)"; then
  bash ~/.local/bin/asdf.sh
fi


echo "[Installing ruby...]"
asdf install ruby $version
asdf global ruby $version

gems=(
    awesome_print
    bundler
    pry
    rails
    rubocop
    rubycritic
    solargraph
)

echo "[Installing gems...]"
gem install ${gems[@]}
