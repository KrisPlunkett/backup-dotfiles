# My Aliases
alias g='git'
alias cl='clear'
alias s='pmset sleepnow'
alias G='grunt'
alias Gt='grunt test'
alias Gb='grunt build'
alias nls0='npm list --depth=0'
alias l='ls'
alias p='python'

# List dir. contents after change dir.
function c () {
    cd "$@" && ls
}

# Color schemes
# Favorites: Hurtado, 
# http://iterm2colorschemes.com/

# Python Virtual Env
source /usr/local/bin/virtualenvwrapper.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
