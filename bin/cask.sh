#! /bin/sh -x

apps=(
    alfred
    atom
    bartender
    battle-net
    dash
    docker
    dropbox
    firefoxdeveloperedition
    flux
    gimp
    google-chrome
    haskell-platform
    iterm2
    java
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
    unity
    yacreader
    zoomus
)

other=(
    1password
    adobe-reader
    android-studio
    chefdk
    elm-platform
    firefox
    fuze
    intel-haxm
    intellij-idea
    launchbar
    libreoffice
    mailbox
    rubymine
    spotify
    sonic-pi
    sublime-text3
    vagrant
    virtualbox
    visual-studio-code
    textmate
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
