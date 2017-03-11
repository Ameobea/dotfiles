ln -s $PWD/bash_profile ~/.bash_profile
ln -s $PWD/aliases.bash ~/.aliases.bash

# Set up vim/nvim
# mkdir ~/.config/nvim
cp $PWD/vimrc ~/.vimrc
# cp $PWD/vimrc ~/.nvimrc
# cp $PWD/vimrc ~/.config/nvim/init.vim

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget https://raw.githubusercontent.com/Ameobea/nvim/master/colors/lyla.vim

mkdir ~/.vim/colors
# mkdir ~/.config/nvim/colors
cp $PWD/lyla.vim ~/.vim/colors/
# cp $PWD/lyla.vim ~/.config/nvim/colors

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

