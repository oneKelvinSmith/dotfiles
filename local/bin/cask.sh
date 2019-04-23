#! /bin/sh -x

apps=(
    alfred
    bartender
    docker
    dropbox
    firefox
    google-chrome
    insomnia
    iterm2   
    java
    kap
    keepingyouawake
    little-snitch   
    micro-snitch     
    ngrok
    postico
    slack            
    spectacle
    visual-studio-code
)

other=(
    1password
    1password-cli
    adobe-reader
    android-studio
    atom
    basecamp
    battle-net
    charles  
    chefdk
    chromedriver
    dash
    discord-ptb    
    firefoxdeveloperedition
    flux
    franz
    fuze
    gimp
    intellij-idea-ce
    keepassx    
    keybase      
    minikube  
    opera
    operadriver
    postman
    rubymine
    skitch
    skype 
    sonic-pi
    spotify
    steam
    studio-3t
    sublime-text
    sublime-text3
    textmate
    trailer
    tunnelbear
    unity
    vagrant
    virtualbox
    virtualbox-extension-pack
    zeplin
    zoomus
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
# brew cask zap ${apps[@]}
