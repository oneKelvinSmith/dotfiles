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
    android-sdk
    axel
    bash
    brew-cask
    coreutils
    elixir
    erlang
    findutils
    fish
    gcc
    git
    gnutls
    hub
    htop
    imagemagick
    node
    parallel
    phantomjs
    postgresql
    python
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
    wemux
    wget
    zsh
)

echo "installing binaries…"
brew install ${binaries[@]}

# Install emacs with its peculiarities
# brew install emacs --HEAD --use-git-head --cocoa --with-gnutls --with-imagemagick
brew install emacs-mac --with-spacemacs-icon
