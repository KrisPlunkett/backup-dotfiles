# emmadev/emma/
export LOCALEMMA_EMMADMIN_BASE_DIR=~/Documents/emmadev/emmadmin/
export LOCALEMMA_AUDIENCE_BASE_DIR=~/Documents/emmadev/audience/../

export NVM_DIR="/Users/kplunkett/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#  LOCALEMMA_PATH
export PATH="$PATH:.
..
.DS_Store
.git
.gitignore
.vagrant
README.md
Vagrantfile
bin
conf
dist
dump.rdb
provisions
/Users/kplunkett/Documents/emmadev/LocalEmma"

# LOCALEMMA lemma zsh completion
fpath=(.
..
.DS_Store
.git
.gitignore
.vagrant
README.md
Vagrantfile
bin
conf
dist
dump.rdb
provisions
/Users/kplunkett/Documents/emmadev/LocalEmma $fpath)
autoload -U compinit
compinit
-e
#  LOCALEMMA_PATH
export PATH="$PATH:/Users/kplunkett/Documents/emmadev/LocalEmma/bin"
-e
# LOCALEMMA lemma zsh completion
fpath=(/Users/kplunkett/Documents/emmadev/LocalEmma/bin $fpath)
autoload -U compinit
compinit
export PATH="/usr/local/sbin:$PATH"
