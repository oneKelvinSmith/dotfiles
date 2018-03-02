#! /bin/sh -x

version=8.9.4

echo "Installing node..."
asdf install nodejs $version
asdf global nodejs $version

modules=(
    babel-brunch
    babel-core
    babel-eslint
    babel-loader
    babel-preset-es2015
    babel-preset-latest
    babel-preset-react
    babel-register
    brunch
    elm-brunch
    elm-oracle
    eslint
    eslint babel-eslint
    eslint-config-standard
    eslint-config-standard-jsx
    eslint-config-standard-react
    eslint-plugin-flowtype
    eslint-plugin-import
    eslint-plugin-jsx-a11y
    eslint-plugin-promise
    eslint-plugin-react
    eslint-plugin-standard
    jest-cli
    js-beautify
    jsonlint
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
    bower
    cordova
    create-react-app
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
