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
