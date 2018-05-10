#! /bin/sh -x

apps=(
    alfred
    bartender
    basecamp
    battle-net
    charles  
    dash
    discord-ptb    
    docker
    dropbox
    google-chrome
    intellij-idea-ce
    iterm2   
    java8
    keepingyouawake
    keybase      
    little-snitch   
    micro-snitch     
    minikube  
    ngrok
    postman
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
    flux
    fuze
    gimp
    intel-haxm
    keepassx    
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
