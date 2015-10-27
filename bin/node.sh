#! /bin/sh -x

if test ! $(which npm); then
    echo "Installing node..."
    brew install node
fi

modules=(
    babel-eslint
    cordova
    ember-cli
    eslint
    eslint-config-airbnb
    eslint-plugin-react
    gulp
    ionic
    ios-sim
    jest-cli
    js-beautify
    tern
)

echo "installing node packages…"
npm install -g ${modules[@]}
