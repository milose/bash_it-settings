#!/usr/bin/env bash

unset MAILCHECK

export BASH_IT_THEME='bakke'
export SCM_CHECK=true
alias sudo="sudo "

# dev
alias gg="gulp && gulp watch"
alias start="gg | serve"
alias prod="(NODE_ENV=production && gulp --production)"
alias serve="php artisan serve --host=0.0.0.0"
alias psrve="python -m SimpleHTTPServer 8000 | open 'http://localhost:8000'"
alias todo="(leasot -r markdown **/*.php; leasot -r markdown **/**/*.php; leasot -r markdown **/**/**/*.php)"
alias empty="truncate -s 0"

# git
alias gl="git log --graph --pretty='%C(yellow)%h %ad%Cred%d %Creset%s%Cblue [%cn]' --abbrev-commit --date=short --all"
alias gs="git status"
alias gc="git commit -m"
alias gd="git diff HEAD"
alias gdt="git difftool HEAD -y"
alias gaa="git add --all ."
alias gac="git add --all . && git commit -m"
alias gap="git add -p"
alias gauth="git shortlog -s -n -e" # list authors
alias nah="git reset --hard && git clean -df"
alias use="git checkout"
alias pull="git pull"
alias pul="FASTER_MERGE=no git pull" # clever name hehe -- use $FASTER_MERGE env var in post-merge hook script to skip some steps

# laravel
alias art="php artisan"
alias tinker="php artisan tinker"
alias reseed="php artisan migrate:refresh --seed"
alias tst="./vendor/bin/phpunit"
alias opt="composer dumpautoload && php artisan optimize && php artisan route:cache"
alias pub="git reset -- public/*" # remove public folder from commits
alias plz="php please" #statamic
alias bust="php artiasn route:clear && php artisan config:clear && php artisan view:clear" #bust the cache

# other web related stuff
alias nuxt="yarn create nuxt-app"

# System
alias ~="cd ~/"
alias ..="cd .."
alias ...="cd .. && cd .."
alias cls="clear"
if [ -x /usr/bin/dircolors ]; then
    alias ls="ls --color=auto"
else
    alias ls="ls -FG"
fi
alias distro="lsb_release -a"
alias ll="ls -lah"
alias lnk="ln -s"
alias rmd="rm -rf"
alias ping="ping -c 5"
alias proc="ps aux | grep "
alias bsync="(cd ~/.bash_it/custom/ && git pull origin master) && reload"
alias htop="htop -s PERCENT_CPU"

if [ "$(uname)" == "Darwin" ];then
    alias cclean="composer clearcache && npm cache clear --force && yarn cache clean && brew cleanup -s"
else
    alias cclean="composer clearcache && npm cache clear --force && yarn cache clean"
fi

# network
alias ports="sudo netstat -tulpn | grep LISTEN --color=never"

# disk and files
alias size="du -sh"
alias sizes="du -sh */"
alias usage="du -h -d1"
alias drives="df -h"
alias mounts="mount | grep /sd --color=never"
alias trunc="truncate -s 0"


# Functions

# Random string generator usage `random [length]`
random () {
    LEN=32
    ISNUM='^[0-9]+$'
    if [[ $# -gt 0 && $1 =~ $ISNUM ]]; then
        LEN=$1
    fi
    
    echo "$(LC_ALL=C < /dev/urandom tr -dc A-Za-z0-9 | head -c $LEN)"
}

# Transfer function for transfer.sh
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }

# Drive speed benchmark
speed() {
    echo "WRITE SPEED:"
    if [ "$(uname)" == "Darwin" ];then
        sync; dd if=/dev/zero of=tempfile bs=1m count=1024; sync
    else
        sync; dd if=/dev/zero of=tempfile bs=1M count=1024; sync
    fi

    echo "READ SPEED:"
    if [ "$(uname)" == "Darwin" ];then
        dd if=tempfile of=/dev/null bs=1m count=1024
    else
        dd if=tempfile of=/dev/null bs=1M count=1024
    fi

    rm tempfile
}

# Display color chart
colors() {
    for i in {0..255} ; do
        printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
        if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
            printf "\n";
        fi
    done
}