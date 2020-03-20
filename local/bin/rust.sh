#! /usr/bin/env bash
set -eo pipefail

if ! test -x "$(command -v asdf)"; then
  bash ~/.local/bin/asdf.sh
fi

if ! test -x "$(command -v rustup)"; then
  echo "[Installing rust...]"
  asdf install rust stable
fi

echo "[Updating rust...]"
rustup update stable

crates=(
  diesel_cli --no-default-features --features postgres
)

echo "[Installing crates...]"
cargo install ${crates[@]}

