#!/usr/bin/env bash

# mac specific aliases
alias o="open ."
alias a="atom"
alias aa="a ."
alias profile="a ~/Work/Data/bash_it-settings/"
alias deva="ssh root@host.deva.co"
alias pi="ssh pi@pi.box"
alias sites="atom ~/.homestead/Homestead.yaml /etc/hosts"
alias vm='function __homestead() { (cd ~/Work/Vagrant/Homestead/ && vagrant $*); unset -f __homestead; }; __homestead'
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
