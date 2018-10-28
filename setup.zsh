rm -f ~/.zshrc ~/.aliases.zsh

ln -s $PWD/zshrc.zsh ~/.zshrc
ln -s $PWD/aliases.zsh ~/.aliases.zsh

# Set up vim/nvim
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/bundle
cp $PWD/vimrc ~/.vimrc

[[ -s "$PWD/lyla.vim" ]] || \
  wget https://raw.githubusercontent.com/Ameobea/nvim/master/colors/lyla.vim
[[ -s "$HOME/.vim/colors/lyla.vim" ]] || cp $PWD/lyla.vim ~/.vim/colors/

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

# Install Rust + Rustup
[[ -s "$HOME/.cargo" ]] || \
  curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly

# Install pipenv
[[ "$(command -v pipenv)" ]] || pip install --user pipenv

# Install Phost and AmeoTrack CLI
pip3 uninstall -y phost ameotrack
pip3 install --user "git+https://github.com/Ameobea/phost.git#egg=phost&subdirectory=client"
pip3 install --user "git+https://github.com/Ameobea/misc_scripts.git#egg=ameotrack&subdirectory=ameotrack"
