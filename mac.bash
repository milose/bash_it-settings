#!/usr/bin/env bash

# mac specific aliases
if [ "$(uname)" == "Darwin" ];then
    alias o="open ."
    alias hosts="atom /etc/hosts"
    alias vm='function __homestead() { (cd ~/Work/Data/Homestead/ && vagrant $*); unset -f __homestead; }; __homestead'
    alias sim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
    alias wd="curl -s http://wttr.in/Podgorica?lang=en | sed -n '1,7p'"
    alias moon="curl -s wttr.in/Moon?lang=en | sed -n '1,23p'"
    alias sleep="pmset sleep now"
    alias dnsflush="sudo killall -HUP mDNSResponder"
    alias composer="COMPOSER_MEMORY_LIMIT=-1 /usr/local/bin/composer"

    # shortcuts to folders
    alias s="cd ~/Work/_sandbox"
    alias gob="cd ~/Work/Data/bash_it-settings"

    # system utils
    alias soff="sudo mdutil -i off /"
    alias son="sudo mdutil -i on /"

    # Application shortcuts
    alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
    alias a="atom ."
    alias c="code ."

    # Node versions
    alias node12='export PATH="/usr/local/opt/node@12/bin:$PATH" && export LDFLAGS="-L/usr/local/opt/node@12/lib" && export CPPFLAGS="-I/usr/local/opt/node@12/include"'
    alias node14='export PATH="/usr/local/opt/node@14/bin:$PATH" && export LDFLAGS="-L/usr/local/opt/node@14/lib" && export CPPFLAGS="-I/usr/local/opt/node@14/include"'
    alias node15='export PATH="/usr/local/opt/node@15/bin:$PATH" && export LDFLAGS="-L/usr/local/opt/node@15/lib" && export CPPFLAGS="-I/usr/local/opt/node@15/include"'
fi