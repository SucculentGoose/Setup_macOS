#!/bin/bash

# Install Xcode Command-Line Tools
if ! xcode-select -p ; then
    xcode-select --install
    exit 0
fi

#Install brew
if which brew > /dev/null;
then
    echo "Good job brew is installed"
else ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing some brew things..."
#Install some brew things
brew install git nodejs ruby cask zsh wget python3 chromedriver htop

echo "Installing some casks..."
#Install some casks
brew cask install java google-chrome firefox postman sublime-text atom wireshark vlc spectacle keepingyouawake licecap tunnelblick iterm2 cyberduck scroll-reverser tmux

echo "Installing maven"
#maven requires java so needed to install that first
brew install maven

echo 'Lets install some other things, make sure to download them!'
#Need to install some other things
urls=(
    'https://www.jetbrains.com/idea/download/'
)
for var in "${urls[@]}"
do
    open "${var}"
done

#setup ssh key
echo "Lets setup an ssh key"
ssh-keygen -t rsa

echo "Time to install oh-my-zsh"
#install oh-my-zsh
if which zsh > /dev/null;
then
  echo "congratulations zsh is installed!"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  #switch default shell to zsh
  chsh -s $(which zsh)
else
  echo "Zsh is not installed. Go do that and then install oh-my-zsh"
fi
