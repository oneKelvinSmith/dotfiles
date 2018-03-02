#! /bin/sh -x

if test ! -e $HOME/.asdf; then
    echo "Installing asdf..."
    git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf
fi

if test ! -e $HOME/.config/fish/completions; then
    mkdir -p $HOME/.config/fish/completions
    cp $HOME/.asdf/completions/asdf.fish $HOME/.config/fish/completions
fi

asdf=$HOME/.asdf/bin/asdf

asdf update --head

asdf plugin-add clojure https://github.com/vic/asdf-clojure
asdf plugin-add elixir  https://github.com/asdf-vm/asdf-elixir
asdf plugin-add elm     https://github.com/vic/asdf-elm.git
asdf plugin-add erlang  https://github.com/asdf-vm/asdf-erlang
asdf plugin-add golang  https://github.com/kennyp/asdf-golang
asdf plugin-add haskell https://github.com/vic/asdf-haskell
asdf plugin-add java    https://github.com/skotchpine/asdf-java
asdf plugin-add lfe     https://github.com/vic/asdf-lfe
asdf plugin-add nodejs  https://github.com/asdf-vm/asdf-nodejs
asdf plugin-add ruby    https://github.com/asdf-vm/asdf-ruby
asdf plugin-add sbt     https://github.com/lerencao/asdf-sbt
asdf plugin-add scala   https://github.com/mtatheonly/asdf-scala

asdf plugin-update --all
