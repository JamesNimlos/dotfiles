# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Hide all desktop icons
defaults write com.apple.finder CreateDesktop false; killall Finder

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=” “

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

./upgrade.sh

# install node & yarn
brew install yarn

# install n package manager
yarn global add n

# take back control of node from brew
sudo n lts

# see git/.gitconfig for reference
npm install -g diff-so-fancy
