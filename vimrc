filetype plugin indent on
colorscheme lyla 
syntax on

" tab settings
set tabstop=2
set shiftwidth=2
set expandtab
set switchbuf=usetab,newtab

" enable mouse integration
set mouse=a

" turn on line numbers
set number

" start nerdtree automatically if no files were selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Cool file tree like Sublime
NeoBundle 'scrooloose/nerdtree'
" Cool tab integration for cool file tree
NeoBundle 'jistr/vim-nerdtree-tabs'
" Indention markers
NeoBundle 'Indent-Guides'
" jsx syntax for vim
NeoBundle 'mxw/vim-jsx'
" Some stuff I left in from the default neobundle installation
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
