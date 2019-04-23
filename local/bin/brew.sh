#! /bin/sh -x

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew tap thoughtbot/formulae
brew tap puma/puma

binaries=(
    awscli
    axel
    bash
    coreutils
    ctags
    exercism
    ffmpeg
    findutils
    fish
    fzf
    gettext
    git
    gnutls
    gnu-sed
    gpg
    htop
    hub
    imagemagick
    ispell
    libogg
    libvorbis
    libxmlsec1
    neovim
    parallel
    postgresql
    postgis
    puma-dev
    rabbitmq
    rcm
    readline
    reattach-to-user-namespace
    redis
    rename
    ripgrep
    ruby-build
    sdl2
    sshuttle
    the_silver_searcher
    terraform
    thrift
    tig
    tldr
    tree
    watch
    watchman
    wemux
    wget
)

other=(
    clojure
    emacs
    gifsicle
    heroku
    kafka
    leiningen
    nsq
    qt5
    tmate
    tmux
    yarn
    zsh
)

echo "installing binaries…"
brew install ${binaries[@]}
