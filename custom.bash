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

# git
alias gl="git log --graph --pretty='%C(yellow)%h %ad%Cred%d %Creset%s%Cblue [%cn]' --abbrev-commit --date=short --all"
alias gs="git status"
alias gc="git commit -m"
alias gd="git diff HEAD"
alias gdt="git difftool HEAD -y"
alias gaa="git add --all ."
alias gac="git add --all . && git commit -m"
alias gap="git add -p"
alias gauth="git shortlog -s -n -e" #list authors
alias nah="git reset --hard && git clean -df"
alias use="git checkout"

# laravel
alias art="php artisan"
alias tinker="php artisan tinker"
alias reseed="php artisan migrate:refresh --seed"
alias tst="./vendor/bin/phpunit"
alias opt="composer dumpautoload && php artisan optimize && php artisan route:cache"
alias pub="git reset -- public/*" # remove public folder from commits
alias plz="php please" #statamic
alias bust="php artiasn route:clear && php artisan config:clear && php artisan view:clear" #bust the cache

# System
alias ~="cd ~/"
alias ..="cd .."
alias c="clear"
alias cls="clear"
if [ -x /usr/bin/dircolors ]; then
    alias ls="ls --color=auto"
else
    alias ls="ls -FG"
fi
alias ll="ls -la"
alias lnk="ln -s"
alias rmd="rm -rf"
alias ping="ping -c 5"
alias proc="ps aux | grep "
alias bsync="(cd ~/.bash_it/custom/ && git pull origin master) && reload"

# Prints disk / folder usage in human readable form
alias size="du -sh"
alias usage="du -h -d1"
alias drives="df -h"
