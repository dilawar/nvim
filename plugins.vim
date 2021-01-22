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

"" Does not work very well with mixed CPP/Python files.
" Plug 'vim-syntastic/syntastic'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" personal
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'chrisbra/unicode.vim'

" python
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'
let g:deoplete#enable_at_startup = 1
Plug 'dilawar/vim-mypy'

" Easy align
Plug 'junegunn/vim-easy-align'

" plugins
Plug 'chrisbra/unicode.vim'
" Turn TeX symbols into unicode.
Plug 'dilawar/vim-unicoder'

"" LucHermite
Plug 'tomtom/stakeholders_vim'
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/alternate-lite'

" pydocstring
Plug 'heavenshell/vim-pydocstring', {'do': 'make install'}
let g:pydocstring_formatter = 'numpy'
let g:pydocstring_doq_path = "$HOME/.local/bin/doq"

" Doxygen
Plug 'vim-scripts/DoxygenToolkit.vim'


" Keep this at the end!
call plug#end()
