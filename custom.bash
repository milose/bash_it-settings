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
alias npms="npm set progress=false"
alias npi="npms && time npm install"
alias npr="npms && time npm remove"
alias nu="npms && sudo npm cache clean -f && sudo npm i -g n && sudo n stable && node --version && npm --version && npm set progress=true"

# git
alias gl="git log --oneline --decorate --all --graph"
alias gs="git status"
alias gd="git diff HEAD"
alias gi="git update-index --assume-unchanged"
alias gu="git update-index --no-assume-unchanged"
alias gt="git fetch && git checkout --track origin/"
alias gac="git add --all . && git commit -m"
alias gap="git add -p"
alias gli='git ls-files -v | grep "^[[:lower:]]"' #?

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
alias bsync="(cd ~/.bash_it-settings/ && git pull) && reload"
