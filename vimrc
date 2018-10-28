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

set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

" start nerdtree automatically if no files were selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" easily hide/show nerdtree, syncing it to all tabs
map <F2> :NERDTreeTabsToggle<CR>

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Show syntax rules under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Go to beginning of line with ctrl+a
map  <C-a> g0
imap <C-a> <C-O>g0<CR>

" close current buffer easily
" map <C-w> :q<CR>

" syntastic "new user" recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['flow', 'eslint']

" Toggle line comment with control+slash
vmap <C-_> <Plug>NERDCommenterToggle
nmap <C-_> <Plug>NERDCommenterToggle

" evil software...
" inoremap <C-_> <C-O><Plug>NERDCommenterToggle<CR>

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" make backspace act sanely
set backspace=indent,eol,start

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Helper for syntax
NeoBundle 'vim-syntastic/syntastic'
" Cool file tree like Sublime
NeoBundle 'scrooloose/nerdtree'
" Cool tab integration for cool file tree
NeoBundle 'jistr/vim-nerdtree-tabs'
" Indention markers
NeoBundle 'Indent-Guides'
" Hilight matching tags
NeoBundle 'valloric/MatchTagAlways'
" massive code completion
NeoBundle 'Valloric/YouCompleteMe'
" rust language integration
NeoBundle 'rust-lang/rust.vim'
" easily comment lines
NeoBundle 'scrooloose/nerdcommenter'
" Auto close HTML tags
" NeoBundle 'alvan/vim-closetag'
" typescript and .tsx syntax
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

NeoBundle 'Quramy/tsuquyomi'
" javascript utils
NeoBundle 'pangloss/vim-javascript'
" ES7 plugin
" NeoBundle 'othree/yajs.vim'

" NeoBundle 'mxw/vim-jsx'
" Some stuff I left in from the default neobundle installation
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
