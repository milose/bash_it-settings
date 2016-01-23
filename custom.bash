#!/usr/bin/env bash

export BASH_IT_THEME='bakke'
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# VAR PATH
#PATH="/usr/local/sbin:/usr/local/bin:/usr/local/php5/bin:$PATH"

# dev
alias gg="gulp && gulp watch"
alias start="gg | serve"
alias serve="php artisan serve --host=0.0.0.0"
alias psrve="python -m SimpleHTTPServer 8000 | open 'http://localhost:8000'"
alias todo="(leasot -r markdown **/*.php; leasot -r markdown **/**/*.php; leasot -r markdown **/**/**/*.php) > TODO.md"

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
alias sites="atom ~/.homestead/Homestead.yaml /etc/hosts"
alias vm='function __homestead() { (cd ~/Work/Vagrant/homestead/ && vagrant $*); unset -f __homestead; }; __homestead'

# System
alias ~="cd ~/"
alias ..="cd .."
alias cls="clear"
alias ls="ls -FG"
alias ll="ls -la"
alias lnk="ln -s"
alias rmd="rm -rf"
