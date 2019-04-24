#! /bin/sh -x

if ! type -q node && ! type -q npm; then
  version=11.14.0

  echo "Importing release team keyring..."
  bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

  echo "Installing node..."
  asdf install nodejs $version
  asdf global nodejs $version
fi

modules=(
  eslint
  eslint-config-prettier
  eslint-import-resolver-webpack
  eslint-plugin-import
  eslint-plugin-react
  jest
  nodemon
  npm
  prettier
  ts-node
  tslint
  typescript
  webpack
  yarn
)

echo "Installing node packages..."
npm install -g ${modules[@]}

echo "Reshimming..."
asdf reshim nodejs
