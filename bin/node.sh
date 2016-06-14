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
    brunch
    elm-brunch
    elm-oracle
    jest-cli
    js-beautify
    phantomjs
    react
    react-dom
    tern
    webpack
)

other=(
    angular
    bower
    gulp
    grunt-cli
    cordova
    ember-cli
    eslint
    eslint-config-airbnb
    eslint-config-ember
    eslint-plugin-react
    ionic
    ios-sim
)

echo "Installing node packages…"
npm install -g ${modules[@]}
