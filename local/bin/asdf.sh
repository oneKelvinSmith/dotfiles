#! /bin/sh -x

if test ! -e $HOME/.asdf; then
  echo "[Installing asdf...]"
  brew install asdf
fi

asdf_cmd=$(brew --prefix asdf)/bin/asdf

echo "[Installing asdf language plugins...]"
plugins=(
  golang
  nodejs
  python
  ruby
  rust
)
for plugin in ${plugins[@]}
do
  $asdf_cmd plugin-add ${plugin}
done

echo "[Updating asdf language plugins...]"
asdf plugin-update --all
