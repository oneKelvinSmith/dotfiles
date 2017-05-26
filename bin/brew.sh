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
    axel
    bash
    coreutils
    ctags
    docker
    docker-compose
    docker-machine
    exercism
    ffmpeg
    findutils
    fish
    fzf
    gifsicle
    gettext
    git
    gnutls
    gpg
    heroku
    htop
    hub
    imagemagick
    ispell
    keybase
    leiningen
    lfe
    libogg
    libvorbis
    neo4j
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
    sdl2
    sshuttle
    the_silver_searcher
    tig
    tmux
    tree
    v8
    watch
    watchman
    wemux
    wget
    yarn
    zsh
)

echo "installing binaries…"
brew install ${binaries[@]}

# Install emacs with its peculiarities
#
# GNU Emacs
# brew install emacs --HEAD --use-git-head --with-cocoa --with-gnutls --with-librsvg --with-imagemagick
brew install emacs --with-cocoa --with-gnutls --with-librsvg --with-imagemagick

# Link brew applications
brew linkapps
