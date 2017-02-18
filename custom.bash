#!/usr/bin/env bash

unset MAILCHECK

export BASH_IT_THEME='bakke'
export SCM_CHECK=true

# dev
alias gg="gulp && gulp watch"
alias start="gg | serve"
alias prod="(NODE_ENV=production && gulp --production)"
alias serve="php artisan serve --host=0.0.0.0"
alias psrve="python -m SimpleHTTPServer 8000 | open 'http://localhost:8000'"
alias todo="(leasot -r markdown **/*.php; leasot -r markdown **/**/*.php; leasot -r markdown **/**/**/*.php)"

# node & npm update
alias npms="npm set progress=false"
alias npi="npms && time npm install"
alias npr="npms && time npm remove"
alias nu="npms && sudo npm cache clean -f && sudo npm i -g n && sudo n stable && node --version && npm --version && npm set progress=true"

# git
alias gl="git log --graph --pretty='%C(yellow)%h %ad%Cred%d %Creset%s%Cblue [%cn]' --abbrev-commit --date=short --all"
alias gs="git status"
alias gc="git commit -m"
alias gd="git diff HEAD"
alias gdt="git difftool HEAD -y"
alias gi="git update-index --assume-unchanged"
alias gu="git update-index --no-assume-unchanged"
alias gt="git fetch && git checkout --track origin/"
alias gac="git add --all . && gc"
alias gap="git add -p"
alias gli='git ls-files -v | grep "^[[:lower:]]"' #print just the files that are unchanged
alias gauth="git shortlog -s -n -e" #list authors
alias nah="git reset --hard && git clean -df"

# laravel
alias lv="composer create-project laravel/laravel"
alias art="php artisan"
alias tinker="php artisan tinker"
alias reseed="php artisan migrate:refresh --seed"
alias test="phpunit"
alias vtest="./vendor/bin/phpunit"

# System
alias ~="cd ~/"
alias ..="cd .."
alias cls="clear"
if [ -x /usr/bin/dircolors ]; then
    alias ls="ls --color=auto"
else
    alias ls="ls -FG"
fi
alias ll="ls -la"
alias lnk="ln -s"
alias rmd="rm -rf"
alias proc="ps aux | grep "
alias bsync="(cd ~/.bash_it/custom/ && git pull origin master) && reload"
