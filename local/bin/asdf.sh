#! /bin/sh -x

if test ! -e $HOME/.asdf; then
  brew install asdf
fi

asdf_cmd=$(brew --prefix asdf)/bin/asdf

$asdf_cmd plugin-add elixir https://github.com/asdf-vm/asdf-elixir
$asdf_cmd plugin-add erlang https://github.com/asdf-vm/asdf-erlang
$asdf_cmd plugin-add golang https://github.com/kennyp/asdf-golang
$asdf_cmd plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs
$asdf_cmd plugin-add python https://github.com/tuvistavie/asdf-python
$asdf_cmd plugin-add ruby   https://github.com/asdf-vm/asdf-ruby
$asdf_cmd plugin-add rust   https://github.com/asdf-community/asdf-rust.git

asdf plugin-update --all
