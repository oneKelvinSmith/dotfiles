#! /bin/sh -x

if test ! $(which npm); then
    echo "Installing node..."
    brew install node
fi

modules=(
    babel-eslint
    cordova
    eslint
    eslint-plugin-react
    gulp
    ionic
    ios-sim
    jest-cli
    tern
)

echo "installing node packages…"
npm install -g ${modules[@]}
