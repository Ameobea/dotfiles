ln -s $PWD/bash_profile ~/.bash_profile
ln -s $PWD/aliases.bash ~/.aliases.bash
cp $PWD/vimrc ~/.vimrc

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

