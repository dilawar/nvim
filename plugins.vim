" Plugin manager provided by: https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'rking/ag.vim'
Plug 'chriskempson/base16-vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/dbext.vim'
Plug 'godlygeek/tabular'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'haya14busa/incsearch.vim'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'plasticboy/vim-markdown'
Plug 'Quramy/vim-js-pretty-template'
Plug 'rust-lang/rust.vim'
Plug 'roxma/vim-tmux-clipboard'

" Use my personal version until changes are accepted by @tpope
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

Plug 'rhysd/vim-clang-format'

" Linting
Plug 'dense-analysis/ale'

" personal
Plug 'SirVer/ultisnips'
Plug 'dilawar/vim-snippets'
Plug 'ervandew/supertab'
Plug 'chrisbra/unicode.vim'


" Keep this at the end!
call plug#end()
