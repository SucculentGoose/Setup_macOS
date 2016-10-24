#!/bin/bash
 
#get some sudo
sudo -v

#install xcode cli tools
xcode-select --install

#Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install some brew things
brew install git nodejs ruby cask zsh wget python3 chromedriver maven
 
#Install some casks
brew cask install google-chrome firefox postman sublime-text atom wireshark vlc spectacle keepingyouawake licecap tunnelblick iterm2
 
#Need to install some other things 
urls=(
    'https://www.jetbrains.com/idea/download/'
    'http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html'
)
for var in "${urls[@]}"
do
    open "${var}"
done

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#switch default shell to zsh
chsh -s $(which zsh)
