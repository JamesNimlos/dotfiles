# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Hide all desktop icons
defaults write com.apple.finder CreateDesktop false; killall Finder

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=” “

./upgrade.sh

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install node & yarn
brew install yarn

# install n package manager
npm install -g n

# take back control of node from brew
sudo n latest

# see git/.gitconfig for reference
npm install -g diff-so-fancy