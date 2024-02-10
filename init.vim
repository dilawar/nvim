set rtp +=~/.config/nvim
execute 'source ' . expand('<sfile>:p:h') . '/plugins.vim'
scriptencoding utf-8
filetype indent plugin on
syntax sync fromstart

set nostartofline
set directory=~/tmp
" set foldmethod=syntax
" set foldlevelstart=80
" set incsearch
" set number
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

set textwidth=99
set colorcolumn=100

colorscheme materialbox

" On windows, fix the python path
if has('win32') || has('win64')
    let g:python3_host_prog = "C:\\Python312\\python.exe"
endif

" Allow loading for folder specific vimrc files.
set exrc
set secure

" rust set compiler to cargo
au BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo
au BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs noremap <buffer> <F9> :make build<CR>compiler=cargo

" Write to a temp file and read from it.
vmap <leader>y :w! ~/.vitmp<CR>
nmap <leader>y :w! ~/.vitmp<CR>
nmap <leader>p :r! ~/.vitmp<CR>

" errorformat. dont stop at warning
" See https://stackoverflow.com/a/14871596/1805129
set errorformat^=%-G%f:%l:\ warning:%m

" backup.
" Thanks https://stackoverflow.com/a/43880028/1805129
if !isdirectory($HOME . "/.cache/vim/backup")
    call  mkdir($HOME . "/.cache/vim/backup", "p", 0700)
endif

set backupdir=$HOME/.cache/vim/backup
set backup
set noswapfile

let mapleader="\\"

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown tw=80
augroup END

" msys2 workaround
if !empty($MSYSTEM)
    set shellcmdflag='-c'
endif
