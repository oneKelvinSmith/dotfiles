#! /bin/sh -x

if test ! $(which npm); then
    echo "Installing node..."
    brew install node
fi

modules=(
    angular
    babel-eslint
    ember-cli
    eslint
    eslint-plugin-react
    gulp
    grunt-cli
    jest-cli
    js-beautify
    tern
)

other=(
    cordova
    ios-sim
    ionic
)

echo "installing node packages…"
npm install -g ${modules[@]}
