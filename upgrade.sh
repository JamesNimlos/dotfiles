#!/usr/bin/env bash

##########################################################################
# UPGRADE
# Upgrades local settings from repository.
##########################################################################

cp ./.bash_profile "$HOME/.bash_profile"
cp ./.bashrc "$HOME/.bashrc"
cp ./.profile "$HOME/.profile"

source "$HOME/.bash_profile"
