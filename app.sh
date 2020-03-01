#!/bin/bash
cat << EOS
 Make My Development Environment
EOS

#
# Install web apps.
#
echo " ----- Install web apps ------"

# 開発共通
brew cask install sourcetree

# ブラウザ
brew cask install firefox
brew cask install google-chrome
brew cask install google-chrome-canary

# エディタ系
brew cask install google-japanese-ime

# mac利用アシスタント
brew cask install cheatsheet

brew cask install visual-studio-code
brew cask install intellij-idea
brew cask install postman
brew cask install iterm2

# brew cask install intellij-idea-ce

# オプション
brew cask install docker
brew cask install virtualbox
brew cask install vagrant
brew cask install funter

echo " ------------ END ------------"

echo " ----- Install font ----------"
brew tap caskroom/fonts && brew cask install font-fira-code
brew cask install caskroom/fonts/font-hack-nerd-font
echo " ------------ END ------------"