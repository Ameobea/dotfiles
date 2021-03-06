# PATH editing
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="/opt/anaconda3/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/opt/Postman:$PATH"
export PATH="/opt/emsdk:/opt/emsdk/clang/e1.38.12_64bit:/opt/emsdk/emscripten/1.38.12:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/.local/bin"

export GOROOT=/usr/local/go
export GOPATH=$HOME/goprojects

source ~/.cargo/env
source /usr/share/autojump/autojump.zsh

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="kennethreitz"

export TERM=xterm-256color

[[ -s /Users/casey/.autojump/etc/profile.d/autojump.sh ]] && \
  source /home/Users/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export RUST_SRC_PATH=/Users/casey/rust/src

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git gpg-agent ssh-agent zsh-autosuggestions zsh-you-should-use docker)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# User configuration

export SSH_KEY_PATH="~/.ssh/rsa_id"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then source '/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then source '/opt/google-cloud-sdk/completion.zsh.inc'; fi
