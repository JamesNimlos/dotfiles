# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=” “

./upgrade.sh

# see git/.gitconfig for reference
npm install -g diff-so-fancy