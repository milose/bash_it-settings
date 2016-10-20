#!/usr/bin/env bash

# mac specific aliases
alias o="open ."
alias a="atom"
alias aa="a ."
alias profile="a ~/Work/Data/bash_it-settings/"
alias deva="ssh -i ~/.ssh/do root@host.deva.co"
alias pi="ssh pi@pi.box"
alias sites="atom /etc/hosts"
alias vm='function __homestead() { (cd ~/Work/Data/Homestead/ && vagrant $*); unset -f __homestead; }; __homestead'
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"

# dirs
alias s="cd ~/Work/_sandbox"

#go
alias gob="cd ~/Work/Data/bash_it-settings"
alias goa="cd ~/Work/_sandbox/aktivnosti"

#lambo
function lmb() {
    lambo $1 "${@:2}"
    cd $1
    if hash yarn 2>/dev/null; then
        yarn
    else
        npm install
    fi
}
alias lmb=lmb
