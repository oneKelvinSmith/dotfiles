#! /bin/sh -x

apps=(
    1password
    alfred
    android-studio
    atom
    bartender
    dropbox
    firefox
    flash
    flux
    gimp
    google-chrome
    heroku-toolbelt
    intel-haxm
    iterm2
    java
    keepingyouawake
    skype
    slack
    spectacle
    steam
    vagrant
    virtualbox
    vlc
)

other_apps=(
    1password
    chefdk
    firefoxdeveloperedition
    fuze
    libreoffice
    mailbox
    adobe-reader
    textmate
    sublime-text3
    rubymine
    intellij-idea
)

mac_store_apps=(
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
