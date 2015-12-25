#! /bin/sh -x

if test ! $(which npm); then
    echo "Installing node..."
    brew install node
fi

modules=(
    angular
    babel-eslint
    bower
    elm
    elm-oracle
    ember-cli
    eslint
    eslint-config-airbnb
    eslint-config-ember
    eslint-plugin-react
    gulp
    grunt-cli
    phantomjs
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
