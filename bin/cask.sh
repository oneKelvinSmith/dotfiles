#! /bin/sh -x

apps=(
    alfred
    bartender
    battle-net
    dash
    docker
    dropbox
    flux
    gimp
    google-chrome
    haskell-platform
    intellij-idea-ce
    iterm2
    java8
    keepassx
    keepingyouawake
    little-snitch
    micro-snitch
    ngrok
    screenhero
    skype
    slack
    spectacle
    steam
    trailer
    tunnelbear
    visual-studio-code
    zoomus
)

other=(
    1password
    adobe-reader
    android-studio
    atom
    chefdk
    elm-platform
    firefox
    firefoxdeveloperedition
    fuze
    intel-haxm
    launchbar
    libreoffice
    mailbox
    rubymine
    sonic-pi
    spotify
    sublime-text3
    textmate
    unity
    vagrant
    virtualbox
)

mac_store=(
    xcode
    evernote
    wunderlist
    dash
    pocket
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
# brew cask zap ${apps[@]}
