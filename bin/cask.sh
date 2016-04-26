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
    heroku-toolbelt
    iterm2
    java
    keepingyouawake
    little-snitch
    micro-snitch
    skype
    slack
    spectacle
    sonic-pi
    steam
    vagrant
    virtualbox
    vlc
    yacreader
)

other=(
    1password
    mailbox
    adobe-reader
    android-studio
    chefdk
    firefoxdeveloperedition
    fuze
    intellij-idea
    launchbar
    libreoffice
    intel-haxm
    rubymine
    spotify
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
