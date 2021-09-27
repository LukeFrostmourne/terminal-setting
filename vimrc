""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'mhinz/vim-signify.git'
Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json.git'
Bundle 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'stamblerre/gocode', {'rtp': 'vim/'}
Plugin 'fatih/vim-go'
Plugin 'python-mode/python-mode'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
set completeopt-=preview

""""""""""""""""""""""""""""""""""""""""""""""""""
" Genernal Setting
""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark
colorscheme solarized

set cursorline

set encoding=utf8
set fileformats=unix,dos,mac
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""
"User interface
""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
set ambiwidth=double
set backspace=indent,eol,start
set ruler " Always show current position
set number " Show linenumber
set cmdheight=1 " The commandbar is 1 high
set incsearch " search as characters are entered
set hlsearch " Highlight search
set showmatch
set showcmd
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set laststatus=2

""""""""""""""""""""""""""""""""""""""""
" Key mapping
""""""""""""""""""""""""""""""""""""""""
"set wmh=0
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
"set wmw=0
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l


" move vertically by visual line
nnoremap j gj
nnoremap k gk


" move to beginning/end of line
nnoremap A ^
nnoremap E $

nnoremap gV `[v`] " highlight last inserted text
nnoremap <silent> <Space> :silent noh<Bar>echo<CR> " Press space to clear search highlighting.

map ;; <plug>NERDCommenterToggle
map <C-x> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""
"  vim-go
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
