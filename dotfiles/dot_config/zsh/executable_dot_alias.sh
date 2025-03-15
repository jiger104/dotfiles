#!/usr/bin/env bash

alias l="ls -lF ${colorflag}"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias reload="exec ${SHELL} -l"
alias path='echo -e ${PATH//:/\\n}'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias zshconfig="chezmoi edit ~/.zshrc"
alias cm='chezmoi "$@"'