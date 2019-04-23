#! /bin/bash -x

if ! test -x "$(command -v rustup)"; then
  echo "Installing rust..."
  curl https://sh.rustup.rs -sSf | sh
fi

echo "Updating rust..."
rustup update stable

crates=(
  diesel_cli --no-default-features --features postgres
)

echo "Installing crates..."
cargo install ${crates[@]}
