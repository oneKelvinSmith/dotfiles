#! /bin/sh -x

if test ! $(which npm); then
    echo "Please install node."
fi

nvm use stable --silent

modules=(
    angular
    babel-eslint
    babel-preset-es2015
    bower
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

echo "Installing node packages…"
npm install -g ${modules[@]}
