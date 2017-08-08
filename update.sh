#!/usr/bin/env bash

##########################################################################
# UPDATE
# Updates repository based on current computer settings.
##########################################################################

cp "$HOME/.bash_profile" ./profile/
cp "$HOME/.bashrc" ./profile/
cp "$HOME/.profile" ./profile/
cp "$HOME/.gitconfig" ./git/
cp "$HOME/.gitignore_global" ./git/

# TODO: add sublime settings
# TODO: add intellij settings
# TODO: add WebStorm settings