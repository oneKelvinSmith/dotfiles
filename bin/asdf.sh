#! /bin/sh -x

if test ! -e $HOME/.asdf; then
    echo "Installing asdf..."
    git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf
fi

if test ! -e $HOME/.config/fish/completions; then
    mkdir -p $HOME/.config/fish/completions
    cp $HOME/.asdf/completions/asdf.fish $HOME/.config/fish/completions
fi

$HOME/.asdf/bin/asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir
$HOME/.asdf/bin/asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang
$HOME/.asdf/bin/asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs
$HOME/.asdf/bin/asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby
