" Plugin manager provided by: https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'rking/ag.vim'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'godlygeek/tabular'
Plug 'haya14busa/incsearch.vim'
Plug 'jeetsukumaran/vim-indentwise'
Plug 'plasticboy/vim-markdown'
Plug 'roxma/vim-tmux-clipboard'

" Use my personal version until changes are accepted by @tpope
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

Plug 'rhysd/vim-clang-format'

" Airline
Plug 'vim-airline/vim-airline'

" Linting
Plug 'dense-analysis/ale'
let g:airline#extensions#ale#enabled = 1

" personal
Plug 'SirVer/ultisnips'
Plug 'dilawar/vim-snippets'
Plug 'ervandew/supertab'
Plug 'chrisbra/unicode.vim'

" python
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'
let g:deoplete#enable_at_startup = 1

" Easy align
Plug 'junegunn/vim-easy-align'


"" LucHermite
Plug 'tomtom/stakeholders_vim'
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/alternate-lite'

" pydocstring
Plug 'heavenshell/vim-pydocstring'
let g:pydocstring_formatter = 'numpy'


" Keep this at the end!
call plug#end()
