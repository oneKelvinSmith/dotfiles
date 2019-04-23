#! /bin/sh -x

version=11.14.0

echo "Installing node..."
asdf install nodejs $version
asdf global nodejs $version

echo "Importing release team keyring..."
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

modules=(
    babel-core
    babel-eslint
    babel-loader
    babel-preset-es2015
    babel-preset-latest
    babel-preset-react
    babel-register
    create-react-app
    eslint
    eslint babel-eslint
    eslint-config-standard
    eslint-config-standard-jsx
    eslint-config-standard-react
    eslint-plugin-import
    eslint-plugin-jsx-a11y
    eslint-plugin-promise
    eslint-plugin-react
    eslint-plugin-standard
    husky 
    jest-cli
    js-beautify
    jsonlint
    prettier
    react
    react-dom
    react-redux
    redux
    standard
    tern
    webpack
)

other=(
    angular
    babel-brunch
    bower
    brunch
    cordova
    elm-brunch
    elm-oracle
    ember-cli
    eslint
    eslint-config-airbnb
    eslint-config-ember
    eslint-plugin-flowtype
    grunt-cli
    gulp
    ionic
    ios-sim
    mocha
    phantomjs
    react-native-cli
)

echo "Installing yarn"
npm install -g yarn

echo "Installing node packages..."
yarn global add -g ${modules[@]}

echo "Reshimming..."
asdf reshim nodejs
