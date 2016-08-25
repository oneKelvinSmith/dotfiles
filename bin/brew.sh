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

binaries=(
    axel
    bash
    brew-cask
    coreutils
    docker
    docker-compose
    docker-machine
    exercism
    ffmpeg
    findutils
    fish
    fzf
    gcc
    gifsicle
    git
    gnutls
    gpg
    htop
    hub
    imagemagick
    ispell
    keybase
    leiningen
    libogg
    libvorbis
    neovim
    parallel
    postgresql
    python3
    qt5
    rcm
    readline
    reattach-to-user-namespace
    rename
    ruby-build
    sdl2
    sshuttle
    the_silver_searcher
    tig
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

# Install emacs with its peculiarities
# brew install emacs --HEAD --use-git-head --with-cocoa --with-gnutls --with-librsvg --with-imagemagick
brew install emacs --with-cocoa --with-gnutls --with-librsvg --with-imagemagick
brew linkapps
