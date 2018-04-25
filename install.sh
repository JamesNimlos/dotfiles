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

brew install bash-completion
# may have to change L285 in /usr/local/etc/bash_completion.d/git-completion.bash to
# unset $(set |sed -ne 's/^\(__gitcomp_builtin_[a-zA-Z0-9_][a-zA-Z0-9_]*\)=.*/\1/p' 2>/dev/null) 2>/dev/null

./upgrade.sh

# install node & yarn
brew install yarn

# install n package manager
yarn global add n

# take back control of node from brew
brew uninstall --ignore-dependencies node
sudo n lts

# see git/.gitconfig for reference
yarn global add diff-so-fancy
