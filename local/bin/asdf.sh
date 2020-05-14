#! /usr/bin/env sh -x

if test ! -e $HOME/.asdf; then
  echo "[Installing asdf...]"
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
  cd ~/.asdf
  git checkout "$(git describe --abbrev=0 --tags)"
  cd -
fi

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
  asdf plugin-add ${plugin}
done

echo "[Updating asdf language plugins...]"
asdf plugin-update --all
