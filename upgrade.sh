#!/usr/bin/env bash

##########################################################################
# UPGRADE
# Upgrades local settings from repository.
##########################################################################

cp ./profile/.bash_profile "$HOME/.bash_profile"
cp ./profile/.bashrc "$HOME/.bashrc"
cp ./profile/.profile "$HOME/.profile"
cp ./git/.gitconfig "$HOME/.gitconfig"
cp ./git/.gitignore_global "$HOME/.gitignore_global"

source "$HOME/.bash_profile"
