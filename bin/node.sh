#! /bin/sh -x

if test ! $(which npm); then
    echo "Installing node..."
    brew install node
fi

binaries = (
    babel-eslint
    cordova
    eslint
    gulp
    ionic
    ios-sim
    jest-cli
    tern
)

echo "installing node packages…"
 ${binaries[@]}
