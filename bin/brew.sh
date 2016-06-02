#! /bin/sh -x

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew tap caskroom/cask
brew tap caskroom/versions
brew tap thoughtbot/formulae

binaries=(
    axel
    bash
    brew-cask
    coreutils
    docker
    docker-compose
    docker-machine
    elasticsearch
    elixir
    erlang
    exercism
    ffmpeg
    findutils
    fish
    gcc
    gifsicle
    git
    gnutls
    gpg
    hub
    htop
    imagemagick
    ispell
    keybase
    leiningen
    libogg
    libvorbis
    mysql
    mongodb
    parallel
    phantomjs
    postgresql
    python
    qt5
    rbenv
    rcm
    readline
    reattach-to-user-namespace
    redis
    rename
    ruby-build
    sdl2
    sqlite
    sshuttle
    the_silver_searcher
    tig
    tmux
    tree
    vim
    watch
    watchman
    wemux
    wget
    zsh
)

echo "installing binaries…"
brew install ${binaries[@]}

# Install emacs with its peculiarities
# brew install emacs --HEAD --use-git-head --with-cocoa --with-gnutls --with-librsvg --with-imagemagick
brew install emacs --with-cocoa --with-gnutls --with-librsvg --with-imagemagick
brew linkapps
