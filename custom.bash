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

# git
alias gac="git add . && git commit -m"
alias gs="git status"
alias gi="git update-index --assume-unchanged"
alias gu="git update-index --no-assume-unchanged"
alias gli='git ls-files -v | grep "^[[:lower:]]"'
alias gt="git fetch && git checkout --track origin/"

# laravel
alias lv="composer create-project laravel/laravel"
alias art="php artisan"
alias tinker="art tinker"
alias test="./vendor/bin/phpunit"

# System
alias ~="cd ~/"
alias ..="cd .."
alias cls="clear"
alias ls="ls -FG"
alias ll="ls -la"
alias lnk="ln -s"
alias rmd="rm -rf"
