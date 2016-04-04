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
)

other=(
    1password
    android-studio
    chefdk
    firefoxdeveloperedition
    fuze
    launchbar
    libreoffice
    intel-haxm
    mailbox
    adobe-reader
    textmate
    sublime-text3
    rubymine
    intellij-idea
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
