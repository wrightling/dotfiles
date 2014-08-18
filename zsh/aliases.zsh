alias reload!='. ~/.zshrc'

unamestr=$(uname)
if [[ "$unamestr" != "Darwin" ]]; then
  alias ls='ls --color=yes'
fi

alias v=gvim
alias m="open -a marked.app"
alias be="bundle exec"
