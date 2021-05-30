source ~/.config/nvim/plugins.vim
scriptencoding utf-8
filetype indent plugin on
syntax sync fromstart

set nostartofline
set directory=~/tmp
set foldmethod=syntax
set foldlevelstart=80
set incsearch
set number
set relativenumber
set showcmd
set virtualedit=block
set norelativenumber

set undodir=$HOME/.undodir
set undofile

set tabstop=4 
set shiftwidth=4 
set expandtab

" System clipboard
set clipboard+=unnamedplus

set textwidth=80 
set colorcolumn=81

colorscheme materialbox

" Allow loading for folder specific vimrc files.
set exrc
set secure

" php is html first
au BufRead,BufNew *.php :setlocal sw=2 tw=2 ts=2 

" Write to a temp file and read from it.
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>
