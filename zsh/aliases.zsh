alias reload!='. ~/.zshrc'

unamestr=$(uname)
if [[ "$unamestr" != "Darwin" ]]; then
  alias ls='ls --color=yes'
fi
