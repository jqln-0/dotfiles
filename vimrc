" ------------------------------------------------------------------------
"  Plugins
" ------------------------------------------------------------------------
filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'gmarik/Vundle.vim'

" Other plugins
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on

" ------------------------------------------------------------------------
"  General Settings
" ------------------------------------------------------------------------
set autoindent
set breakindent
set backspace=indent,eol,start
set encoding=utf-8
set hidden
set matchtime=1
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
set undofile
set undodir=~/.vim/tmp/undo//

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
set ttyfast
syntax on

" Colour scheme
let g:hybrid_use_Xresources = 1
colorscheme hybrid
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
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_section_b = ''
let g:airline_section_y = ''
set ttimeoutlen=50

" CtrlP
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_map = '<c-p>'
nnoremap <leader>p :CtrlPTag<CR>

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.dotfiles/ycm_extra_conf.py'
" let g:ycm_autoclose_preview_window_after_insertion = 1

" delimitMate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_expand_inside_quotes = 0
let delimitMate_nesting_quotes = ['"', "'"]

" Syntastic
let g:syntastic_javascript_jshint_args = '--config /home/jacqui/.jshintrc'

" ------------------------------------------------------------------------
"  GVIM Settings
" ------------------------------------------------------------------------
if has('gui_running')
		set guifont=Meslo\ LG\ S\ DZ\ 9
    set guioptions=i
endif

