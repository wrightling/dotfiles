alias reload!='. ~/.zshrc'

unamestr=$(uname)
if [[ "$unamestr" != "Darwin" ]]; then
  alias ls='ls --color=yes'
fi

alias v=vim
alias vi=vim
alias m="open -a marked.app"
alias be="bundle exec"

alias dc="docker-compose -f docker-compose.dev.yml"

alias clients="c web/clients"
alias frontend="c web/frontend"
alias services="c web/services"
alias shared="c web/shared"
