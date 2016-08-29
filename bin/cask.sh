#! /bin/sh -x

apps=(
    alfred
    atom
    bartender
    battle-net
    dropbox
    elm-platform
    firefox
    flux
    gimp
    google-chrome
    iterm2
    java
    keepassx
    keepingyouawake
    little-snitch
    micro-snitch
    polymail
    screenhero
    skype
    slack
    spectacle
    steam
    vagrant
    virtualbox
    vlc
    yacreader
)

other=(
    1password
    adobe-reader
    android-studio
    chefdk
    firefoxdeveloperedition
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
