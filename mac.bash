#!/usr/bin/env bash

# mac specific aliases
alias a="atom"
alias aa="a ."
alias profile="a ~/.bash_it/custom/milos.bash"
alias deva="ssh root@host.deva.co"
alias sites="atom ~/.homestead/Homestead.yaml /etc/hosts"
alias vm='function __homestead() { (cd ~/Work/Vagrant/homestead/ && vagrant $*); unset -f __homestead; }; __homestead'
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
