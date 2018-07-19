#! /bin/sh -x

apps=(
    alfred
    bartender
    battle-net
    charles  
    dash
    discord-ptb    
    docker
    dropbox
    firefox
    google-chrome
    intellij-idea-ce
    iterm2   
    java8
    kap
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
    tunnelbear
    visual-studio-code
    zeplin
    zoomus
)

other=(
    1password
    adobe-reader
    android-studio
    atom
    basecamp
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
    trailer
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
