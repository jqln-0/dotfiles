" ------------------------------------------------------------------------
"  Plugins
" ------------------------------------------------------------------------
filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'Blackrush/vim-gocode'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
" Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
" Bundle 'sjl/badwolf'
Bundle 'tomasr/molokai'
Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on

" ------------------------------------------------------------------------
"  General Settings
" ------------------------------------------------------------------------
set autoindent
set backspace=indent,eol,start
set encoding=utf-8
set hidden
set matchtime=1
set ruler
set scrolloff=8
set shell=/bin/zsh
set title

" Spellcheck dictionary.
set dictionary=/usr/share/dict/words

" Remap leader key.
let mapleader = ","

" ------------------------------------------------------------------------
"  Tab & Spaces
" ------------------------------------------------------------------------
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Filetype-specific tab settings.
autocmd FileType python set expandtab

" ------------------------------------------------------------------------
"  Autocompletion
" ------------------------------------------------------------------------
set wildmenu
set wildmode=list:longest

" ------------------------------------------------------------------------
"  Display
" ------------------------------------------------------------------------
set cursorline
set laststatus=2
set lazyredraw
set noerrorbells
set number
set relativenumber
set showcmd
set ttyfast
syntax on

" Colour scheme
set t_Co=256
colorschem molokai
set background=dark

" ------------------------------------------------------------------------
"  Searching & Moving
" ------------------------------------------------------------------------
nnoremap / /\v
nnoremap <leader><space> :noh<cr>
nnoremap j gj
nnoremap k gk
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>
set hlsearch
set ignorecase
set incsearch
set mouse=a
set showmatch
set smartcase

" ------------------------------------------------------------------------
"  Long Lines & Whitespace
" ------------------------------------------------------------------------
set textwidth=0
set wrap

" Highlight trailing whitespace.
set list
set listchars=trail:·,tab:\ \ 

" ------------------------------------------------------------------------
"  Plugin Settings
" ------------------------------------------------------------------------
" Airline
let g:airline_theme = 'molokai'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#whitespace#enabled = 0
let g:bufferline_echo = 0
set ttimeoutlen=50

" CtrlP
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_map = '<c-p>'

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.dotfiles/ycm_extra_conf.py'
" let g:ycm_autoclose_preview_window_after_insertion = 1

" delimitMate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_expand_inside_quotes = 0
let delimitMate_nesting_quotes = ['"', "'"]

" ------------------------------------------------------------------------
"  GVIM Settings
" ------------------------------------------------------------------------
if has('gui_running')
		set guifont=DejaVu\ Sans\ Mono\ 9
    set guioptions=i
endif

