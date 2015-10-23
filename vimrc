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

" General plugins.
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/syntastic'
Plug 'w0ng/vim-hybrid'
Plug 'chriskempson/vim-tomorrow-theme'

" Filetype-specific plugins.
" Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'marijnh/tern_for_vim', { 'for': 'js' }

" YouCompleteMe requires some special setup.
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh --clang-completer
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

call plug#end()

" ------------------------------------------------------------------------
"  General Settings
" ------------------------------------------------------------------------
set autoindent
set breakindent
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
let g:hybrid_use_Xresources = 1
set background=dark
colorscheme Tomorrow-Night

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

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.dotfiles/ycm_extra_conf.py'

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
		set guifont=Monospace
    set guioptions=i
endif

