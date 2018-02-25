#! /bin/sh -x

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew tap caskroom/cask
brew tap caskroom/versions
brew tap neovim/neovim
brew tap thoughtbot/formulae
brew tap puma/puma

binaries=(
    awscli
    axel
    bash
    coreutils
    ctags
    dep
    exercism
    ffmpeg
    findutils
    fish
    fzf
    gifsicle
    gettext
    git
    gnutls
    go
    gpg
    heroku
    htop
    hub
    imagemagick
    ispell
    kafka
    keybase
    leiningen
    lfe
    libogg
    libvorbis
    neovim
    parallel
    phantomjs
    postgresql
    postgis
    puma-dev
    python3
    qt5
    rabbitmq
    rcm
    readline
    reattach-to-user-namespace
    redis
    rename
    ruby-build
    sbt
    scalastyle
    sdl2
    sshuttle
    the_silver_searcher
    terraform
    thrift
    tig
    tldr
    tmate
    tmux
    tree
    watch
    watchman
    wemux
    wget
    zsh
)

echo "installing binaries…"
brew install ${binaries[@]}

# Install gnu sed to replace osx sed
brew install gnu-sed --with-default-names

# Install emacs with its peculiarities
#
# GNU Emacs
brew install emacs --with-gnutls --with-librsvg --with-imagemagick@6 --with-cocoa

# Link brew applications
brew linkapps
