#! /bin/sh -x

if test ! $(which asdf); then
    echo "Please install node."
    asdf install nodejs 6.4.0
fi

modules=(
    babel-brunch
    babel-core
    babel-eslint
    babel-loader
    babel-preset-es2015
    babel-preset-react
    babel-register
    bower
    brunch
    elm-brunch
    elm-oracle
    eslint
    eslint-config-standard
    eslint-config-standard-jsx
    eslint-config-standard-react
    eslint-plugin-promise
    eslint-plugin-react
    eslint-plugin-standard
    jest-cli
    js-beautify
    mocha
    phantomjs
    react
    react-dom
    react-native-cli
    react-redux
    redux
    standard
    tern
    webpack
)

other=(
    angular
    cordova
    ember-cli
    eslint-config-airbnb
    eslint-config-ember
    grunt-cli
    gulp
    ionic
    ios-sim
)

echo "Installing node packages…"
npm install -g ${modules[@]}
