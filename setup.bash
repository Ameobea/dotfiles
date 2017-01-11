ln -s $PWD/bash_profile ~/.bash_profile
ln -s $PWD/aliases.bash ~/.aliases.bash

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# git submodule update --init --recursive
# git submodule foreach git pull origin master
