#!/bin/bash
cat << EOS
 Make My Development Environment
EOS

# ---------------------------------------
# 必須のインストール
# ---------------------------------------

#
# Install homebrew.
#
echo " --------- Homebrew ----------"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade --all --cleanup
brew -v
echo " ------------ END ------------"

#
# Memorize user pass
#
read -sp "Your Password: " pass;

# ---------------------------------------
# Git用
# ---------------------------------------
#
# Install git
#
echo " ------------ Git ------------"
brew install git
git --version
echo " ------------ END ------------"

# ---------------------------------------
# ターミナルの変更(zshに変更 オプション)
# ---------------------------------------
# echo " ----------- rbenv ------------"
brew install rbenv
# echo " ------------ END ------------"


# echo " ------------ zsh ------------"
brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff
which -a zsh
echo $pass | sudo -S -- sh -c 'echo '/usr/local/bin/zsh' >> /etc/shells'
chsh -s /usr/local/bin/zsh
# echo " ------------ END ------------"

# echo " ------------ Vim ------------"
# brew install vim --with-override-system-vi
# echo " ------------ END ------------"

# echo " --------- Powerline ---------"
Font is 14pt Iconsolata for Powerline with Solarized Dark iterm2 colors.
git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
git clone https://github.com/powerline/fonts.git ~/fonts
~/fonts/install.sh
# echo " ------------ END ------------"

# echo " ----------- wget ------------"
# brew install wget
# wget --version
# echo " ------------ END ------------"

# echo " ----------- colorls ------------"
gem install colorls
brew cask install caskroom/fonts/font-hack-nerd-font
# echo " ------------ END ------------"

# ---------------------------------------
# Install Node.js env
# ---------------------------------------
echo " ---------- Node.js ----------"
brew install nodebrew
nodebrew ls-remote
nodebrew install-binary latest
nodebrew ls
nodebrew use latest
node -v
npm -v
echo " ------------ END ------------"

# ---------------------------------------
# sdkman(java, kotlin, maven, gradle)
# ---------------------------------------
curl -s "https://get.sdkman.io" | zsh
source "$HOME/.sdkman/bin/sdkman-init.sh"

# ---------------------------------------
# goenv
# ---------------------------------------
echo " ----------- goenv ------------"
brew install goenv
echo " ------------ END ------------"

# ---------------------------------------
# pyenv
# ---------------------------------------
echo " ----------- pyenv ------------"
brew install pyenv
echo " ------------ END ------------"

# ---------------------------------------
# Install Yarn
# ---------------------------------------
echo " ----------- Yarn ------------"
brew install yarn
echo " ------------ END ------------"

# ---------------------------------------
# Install tree
# ---------------------------------------
echo " ----------- tree ------------"
brew install tree
echo " ------------ END ------------"

# ---------------------------------------
# app用(GUIのインストール)
# ---------------------------------------
while true; do
  read -p 'Now install web apps? [Y/n]' Answer
  case $Answer in
    '' | [Yy]* )
      $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/app.sh
      break;
      ;;
    [Nn]* )
      echo "Skip install"
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done;

# ---------------------------------------
# appstore用(appstoreにあるもののインストール)
# ---------------------------------------

while true; do
  read -p 'Now install App Store apps? [Y/n]' Answer
  case $Answer in
    '' | [Yy]* )
      $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/appstore.sh
      break;
      ;;
    [Nn]* )
      echo "Skip install"
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done;






