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
brew tap caskroom/cask
brew install git node ruby cask zsh wget python3 chromedriver htop wakeonlan

brew tap railwaycat/emacsmacport
brew update
#brew install emacs-mac
echo "Installing some casks..."
#Install some casks
brew cask install cscreen viscosity visual-studio-code discord fetch google-chrome chromedriver firefox postman sublime-text atom wireshark vlc spectacle keepingyouawake licecap tunnelblick iterm2 cyberduck scroll-reverser flux the-unarchiver fluor scroll-reverser pdftotext gimp java

brew cask install caskroom/cask/intellij-idea-ce

echo "Installing maven"
#maven requires java so needed to install that first
brew install maven

#Download the iterm 2 color scheme
cd ~/Downloads
git clone https://github.com/arcticicestudio/nord-iterm2.git
cd

#clone dotfies
cd ~/repos
git clone https://github.com/jon-van/dotfiles.git

# Symobilic link of configs
for x in `ls -A /Users/$USER/repos/dotfiles/`
do
    if [ -a /Users/$USER/$x ]
    then
        echo "Removing $x"
        rm -rf $x
        ln -sf /Users/$USER/repos/dotfiles/$x ~
    else
        ln -sf /Users/$USER/repos/dotfiles/$x ~
    fi
done

#Setup vim stuff
cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

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
