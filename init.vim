source ~/.config/nvim/plugins.vim
scriptencoding utf-8
filetype indent plugin on
syntax sync fromstart

set nostartofline
set directory=~/tmp
set foldmethod=syntax
set foldlevelstart=99
set incsearch
set number
set relativenumber
set showcmd
set virtualedit=block
set norelativenumber

set undodir=$HOME/.undodir
set undofile

" Case sensitivity
" I tried this while ignoring case and it was driving me crazy
set noignorecase
set smartcase


" System clipboard
set clipboard+=unnamedplus
