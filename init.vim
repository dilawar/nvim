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

colorscheme zellner

" Allow loading for folder specific vimrc files.
set exrc
set secure

" Write to a temp file and read from it.
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>

au BufNewFile,BufRead *.vue,*.js,*.html setlocal expandtab ts=2 sw=2

" errorformat. dont stop at warning
" See https://stackoverflow.com/a/14871596/1805129
set errorformat^=%-G%f:%l:\ warning:%m
set backupdir=$HOME/.cache/vim_backup
