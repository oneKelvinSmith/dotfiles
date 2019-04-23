#! /bin/sh -x

declare -a packages=(
  DavidAnson.vscode-markdownlint
  PeterJausovec.vscode-docker
  TeddyDD.fish
  castwide.solargraph
  chenxsan.vscode-standardjs
  christian-kohler.path-intellisense
  daltonjorge.scala
  deerawan.vscode-dash
  dragos.scala-lsp
  eamodio.gitlens
  esbenp.prettier-vscode
  justusadam.language-haskell
  kalitaalexey.vscode-rust
  lightbend.vscode-sbt-scala
  lukehoban.Go
  misogi.ruby-rubocop
  mjmcloug.vscode-elixir
  ms-vsliveshare.vsliveshare
  rebornix.Ruby
  sbrink.elm
  sleistner.vscode-fileutils
  tomphilbin.gruvbox-themes
  vscodevim.vim
)

for package in ${packages[@]}
do
  code --install-extension $package
done

