ln -s $PWD/bash_profile ~/.bash_profile
ln -s $PWD/aliases.bash ~/.aliases.bash
ln -s $PWD/init.vim ~/.config/nvim/

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim

# git submodule update --init --recursive
# git submodule foreach git pull origin master
