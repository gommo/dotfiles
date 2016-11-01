call pathogen#infect()
call pathogen#helptags()

"====
" Basic configurations
"====
set nocompatible
set nobackup

colorscheme desert
"set cursorline
hi clear CursorLine
hi CursorLine term=bold cterm=bold gui=bold guibg=Grey40
set background=dark
syntax on

" Allow unsaved background buffers and remember marks/undo for them
set hidden
set history=10000

set expandtab
set ts=4
set shiftwidth=4
set softtabstop=4
set mat=5
set autoindent
set laststatus=2

set incsearch
set ignorecase
set showmatch
set hlsearch

set ignorecase smartcase

set cmdheight=2

set shell=bash
set title

set t_Co=256
set bs=2

set wildmode=list:longest

set ruler      

set visualbell

filetype on
filetype plugin on
filetype indent on

let mapleader = ','

"====
" Maps
"====
map <leader>n :NERDTreeToggle<CR>
map <leader>t :CommandT<CR>

" Clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<CR>

"====
" Custom autocommands
"====

augroup vimrcEx
    " Jump to last Cursor position
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif

    " Example of filetype changes
    autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber set ai sw=2 sts=2 et
augroup END
