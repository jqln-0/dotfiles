" ------------------------------------------------------------------------
"  Plugins
" ------------------------------------------------------------------------
set nocompatible

" Bootstrap vim-plug if we don't already have it.
if empty(glob("~/.vim/autoload/plug.vim"))
  execute 'silent !mkdir -p ~/.vim/autoload'
  execute 'silent !curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" General plugins
Plug 'kien/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'tssm/fairyfloss.vim'

" Airline and themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Filetype-specific plugins.
" Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'marijnh/tern_for_vim', { 'for': 'js' }

call plug#end()

" ------------------------------------------------------------------------
"  General Settings
" ------------------------------------------------------------------------
set autoindent
set backspace=indent,eol,start
set encoding=utf-8
set hidden
set ruler
set scrolloff=8
set shell=/bin/zsh
set title
set noswapfile

" Remap leader key.
let mapleader = ","

" Map jj to esc in insert mode.
imap jj <Esc>

" Persistent undo.
if empty(glob("~/.vim/undo/"))
  execute 'silent !mkdir -p ~/.vim/undo'
endif
set undofile
set undodir=~/.vim/undo//

" ------------------------------------------------------------------------
"  Tab & Spaces
" ------------------------------------------------------------------------
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Filetype-specific tab settings.
" The Go setting doesn't really matter since we gofmt on save anyway.
" Whatever.
autocmd FileType go set noexpandtab
autocmd FileType make set noexpandtab

" When am I ever going to edit a modula2 file?
autocmd BufRead,BufNewFile *.md set filetype=markdown

" ------------------------------------------------------------------------
"  Command Autocompletion
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
set showmatch
set matchtime=1
syntax on

" Colour scheme
set background=dark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme fairyfloss

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
set smartcase

" ------------------------------------------------------------------------
"  Long Lines & Whitespace
" ------------------------------------------------------------------------
set textwidth=0
set wrap
set cc=81

" Highlight trailing whitespace.
set list
set listchars=trail:·,tab:\ \ 

" ------------------------------------------------------------------------
"  Plugin Settings
" ------------------------------------------------------------------------
" Airline
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='fairyfloss'
"let g:airline_section_b = ''
"let g:airline_section_y = ''
set ttimeoutlen=50

" CtrlP
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_map = '<c-p>'

" delimitMate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_expand_inside_quotes = 0
let delimitMate_nesting_quotes = ['"', "'"]

" asyncomplete.vim
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" ------------------------------------------------------------------------
"  GVIM Settings
" ------------------------------------------------------------------------
if has('gui_running')
		set guifont=Monospace
    set guioptions=i
endif
