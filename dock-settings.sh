# magnification on
defaults write com.apple.dock magnification -bool true

# scale minification effect
defaults write com.apple.dock mineffect -string scale

# auto hide on
defaults write com.apple.dock autohide -bool true

# faster auto show/hide + shorter delay
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.5

# don't show recent apps
defaults write com.apple.dock show-recents -bool false

# add a spacer
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

# restart dock
killall Dock