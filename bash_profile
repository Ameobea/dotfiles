# PATH editing
export PATH
export PATH="$HOME/.bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# sources
source ~/.aliases.bash
source ~/.cargo/env

function setbg {
  export PROMPT_BG_COLOR=$1
}
function settext {
  export PROMPT_TEXT_COLOR=$1
}

setbg 6
settext 3

# git autocompletion for branch names
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
  __git_complete gc _git_checkout
  __git_complete gb _git_branch
  __git_complete gd _git_diff
fi

# autocomplete for ssh config
_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh

# rbenv
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
rbenv init -
