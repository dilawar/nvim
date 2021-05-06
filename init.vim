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

" Strip whitespaces
function! <SID>StripTrailingWhitespaces()
    if !&binary && &filetype != 'diff'
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
    endif
endfun

autocmd FileType c,cpp,java,php,ruby,python,vue,js autocmd BufWritePre <buffer> \
    :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre,FileWritePre,FileAppendPre,FilterWritePre * \
    :call <SID>StripTrailingWhitespaces()
