#!/usr/bin/env bash

export BASH_IT_THEME='bakke'
unset MAILCHECK
export SCM_CHECK=true

# dev
alias gg="gulp && gulp watch"
alias start="gg | serve"
alias serve="php artisan serve --host=0.0.0.0"
alias psrve="python -m SimpleHTTPServer 8000 | open 'http://localhost:8000'"
alias todo="(leasot -r markdown **/*.php; leasot -r markdown **/**/*.php; leasot -r markdown **/**/**/*.php)"

# node & npm update
alias nu="sudo npm cache clean -f && sudo npm install -g n && sudo n stable && node --version && npm --version"

# git
alias gac="git add --all . && git commit -m"
alias gs="git status"
alias gi="git update-index --assume-unchanged"
alias gu="git update-index --no-assume-unchanged"
alias gli='git ls-files -v | grep "^[[:lower:]]"'
alias gt="git fetch && git checkout --track origin/"

# laravel
alias lv="composer create-project laravel/laravel"
alias art="php artisan"
alias tinker="art tinker"
alias seeder="art migrate:refresh --seed"
alias test="./vendor/bin/phpunit"

# System
alias ~="cd ~/"
alias ..="cd .."
alias cls="clear"
alias ls="ls -FG"
alias ll="ls -la"
alias lnk="ln -s"
alias rmd="rm -rf"
alias bsync="(cd ~/.bash_it-settings/ && git pull && reload)"
