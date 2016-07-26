# Path to your oh-my-zsh installation.
export ZSH=/Users/kplunkett/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# Favorites: simple
ZSH_THEME="simple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"

# My Aliases
alias g='git'
alias cl='clear'
alias G='grunt'
alias Gt='grunt test'
alias Gb='grunt build'
alias nl='npm list --depth=0'
alias l='ls'
alias p='python'
alias pir='pip install -r requirements.txt'
alias zc='vim ~/.zshrc'
alias vc='vim ~/.vimrc'

# Use 'z' to jump around
. `brew --prefix`/etc/profile.d/z.sh

# Clear PYC files
alias cleanpyc='find . -type f -name "*.pyc" -delete'

# My functions
## List dir. contents after change dir.
function c () {
    cd "$@" && ls
}

# List contents after the zsh auto-cd
function chpwd() {
    emulate -L zsh
    ls -a
}

# Fix npm permissions for nv
function npmfix {
    n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
}

# Local mysql server
function mr {
    mysql -uroot
}

# Get size all css in dir
function sizecss {
    find . -type f -name '*.css'  -exec du -ch {} + | grep total$
}

# Remove all built css
function rmcss {
    find . -type f -name "*.css" -not -name "*sunset*" -not -name "*widgets*" -not -name "*spellchecker*" -not -name "*personalization*" -not -name "*codemirror*" -not -name "*jquery*" -not -name "*drag-and-drop-editor-refined-help*" -not -name "*trail-status*" -not -name "*refined-help*" -not -name "*alert-bars*" -not -name "*.min.css" -not -name "*trial-status*" -not -name "*social*" -not -name "*video-tag*" -not -name "*line-height*" -not -name "*/aap2/campaings/preview_iframe/*" -not -name "*survey-styles*" -not -name "*tiny_mce*" -delete
}

# For Emma
export WORKON_HOME=~/.virtualenvssource
source /usr/local/bin/virtualenvwrapper.sh

# workflows cluster prod
function workflows_mysql {
    mysql -h p-aws-workflows-cluster.cluster-cro7ojjod8ac.us-east-1.rds.amazonaws.com -u platform -p
}

# aurora cluster prod
function  aurora_mysql {
    mysql -h d-aws-emmaplatform-aurora-cluster.cluster-cro7ojjod8ac.us-east-1.rds.amazonaws.com -u platform -p
}

# grep history
function h {
    history | grep $1
}

# Reload .zshrc
function sz {
    source ~/.zshrc
}
# For LocalEmma
export LOCALEMMA_EMMA_BASE_DIR=~/Documents/emmadev/emma/
export LOCALEMMA_EMMADMIN_BASE_DIR=~/Documents/emmadev/emmadmin/
export LOCALEMMA_AUDIENCE_BASE_DIR=~/Documents/emmadev/audience/../

#  LOCALEMMA_PATH
export PATH="$PATH:/Users/kplunkett/Documents/emmadev/LocalEmma/bin"

# LOCALEMMA lemma zsh completion
fpath=(/Users/kplunkett/Documents/emmadev/LocalEmma/bin $fpath)

source /usr/local/opt/nvm/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
if [[ -s "${ZDOTDIR:-$HOME}/.dinghyenv" ]]; then
    source "${ZDOTDIR:-$HOME}/.dinghyenv"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.docker-commands.sh" ]]; then
    source "${ZDOTDIR:-$HOME}/.docker-commands.sh"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.dinghyenv" ]]; then
    source "${ZDOTDIR:-$HOME}/.dinghyenv"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.docker-commands.sh" ]]; then
    source "${ZDOTDIR:-$HOME}/.docker-commands.sh"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.dinghyenv" ]]; then
    source "${ZDOTDIR:-$HOME}/.dinghyenv"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.docker-commands.sh" ]]; then
    source "${ZDOTDIR:-$HOME}/.docker-commands.sh"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.dinghyenv" ]]; then
    source "${ZDOTDIR:-$HOME}/.dinghyenv"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.docker-commands.sh" ]]; then
    source "${ZDOTDIR:-$HOME}/.docker-commands.sh"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.dinghyenv" ]]; then
    source "${ZDOTDIR:-$HOME}/.dinghyenv"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.docker-commands.sh" ]]; then
    source "${ZDOTDIR:-$HOME}/.docker-commands.sh"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.dinghyenv" ]]; then
    source "${ZDOTDIR:-$HOME}/.dinghyenv"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.docker-commands.sh" ]]; then
    source "${ZDOTDIR:-$HOME}/.docker-commands.sh"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.dinghyenv" ]]; then
    source "${ZDOTDIR:-$HOME}/.dinghyenv"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.docker-commands.sh" ]]; then
    source "${ZDOTDIR:-$HOME}/.docker-commands.sh"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.dinghyenv" ]]; then
    source "${ZDOTDIR:-$HOME}/.dinghyenv"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.docker-commands.sh" ]]; then
    source "${ZDOTDIR:-$HOME}/.docker-commands.sh"
fi
