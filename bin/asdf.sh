#! /bin/sh -x

if test ! -d "$HOME/.asdf"; then
    echo "Installing asdf..."
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf
fi

if test ! -d "$HOME/.config/fish"; then
    echo 'source ~/.asdf/asdf.fish' >> ~/.config/fish/config.fish
    mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions
fi

$HOME/.asdf/bin/asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir
$HOME/.asdf/bin/asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang
$HOME/.asdf/bin/asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs
$HOME/.asdf/bin/asdf plugin-add postgres https://github.com/smashedtoatoms/asdf-postgres
$HOME/.asdf/bin/asdf plugin-add python https://github.com/tuvistavie/asdf-python
$HOME/.asdf/bin/asdf plugin-add redis	https://github.com/smashedtoatoms/asdf-redis
$HOME/.asdf/bin/asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby
