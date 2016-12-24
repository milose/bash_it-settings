#!/usr/bin/env bash

# mac specific aliases
alias o="open ."
alias a="atom"
alias aa="atom ."
alias profile="atom ~/Work/Data/bash_it-settings/"
alias deva="ssh -i ~/.ssh/do root@host.deva.co"
alias pi="ssh pi@pi.box"
alias hosts="atom /etc/hosts"
alias vm='function __homestead() { (cd ~/Work/Data/Homestead/ && vagrant $*); unset -f __homestead; }; __homestead'
alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"

#go
alias s="cd ~/Work/_sandbox"
alias gob="cd ~/Work/Data/bash_it-settings"
alias goa="cd ~/Work/_sandbox/aktivnosti"

# lambo function
function lmb() {
    # check if lambo is executable
    if ! hash lambo 2>/dev/null; then
        echo 'run composer global require tightenco/lambo to install lambo'
        return 1
    fi
    
    lambo $1 "${@:2}"
    
    # check if no arguments passed, if so exit after lambo run
    if [ -z "$1" ]; then
        return 1
    fi
    
    # change directory
    cd $1
    
    # check if yarn is executable, otherwise use npm
    if hash yarn 2>/dev/null; then
        yarn
    else
        npm install
    fi
}
