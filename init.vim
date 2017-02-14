syntax on
colorscheme lyla

" tab settings
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" turn on line numbers
set number

" NeoBundle initialization
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

" set up rust integration
NeoBundle 'rust-lang/rust.vim'
call neobundle#end()
