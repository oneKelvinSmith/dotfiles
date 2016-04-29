#! /bin/sh -x

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew tap caskroom/cask
brew tap caskroom/versions
brew tap thoughtbot/formulae
brew tap railwaycat/emacsmacport

binaries=(
    axel
    bash
    brew-cask
    coreutils
    docker
    docker-compose
    docker-machine
    elixir
    erlang
    findutils
    fish
    gcc
    git
    gnutls
    gpg
    hub
    htop
    imagemagick
    ispell
    keybase
    leiningen
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
    sqlite
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

    # libs
    sdl2
    libogg
    libvorbis
)

echo "installing binaries…"
brew install ${binaries[@]}

# Install emacs with its peculiarities
# brew install emacs --HEAD --use-git-head --cocoa --with-gnutls --with-imagemagick
brew install emacs-mac --with-spacemacs-icon
brew linkapps
