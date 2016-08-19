#! /bin/sh -x

if test ! $(which npm); then
    echo "Please install node."
fi

nvm use stable --silent

modules=(
    babel-brunch
    babel-core
    babel-eslint
    babel-loader
    babel-preset-es2015
    babel-preset-react
    eslint-plugin-react
    brunch
    elm-brunch
    elm-oracle
    jest-cli
    js-beautify
    phantomjs
    react
    react-dom
    standard
    tern
    webpack
)

other=(
    angular
    bower
    cordova
    ember-cli
    eslint
    eslint-config-airbnb
    eslint-config-ember
    grunt-cli
    gulp
    ionic
    ios-sim
)

echo "Installing node packages…"
npm install -g ${modules[@]}
