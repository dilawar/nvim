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
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_cpp_gcc_options = '-std=c++17'
let g:ale_tex_chktex_options = '-n26 -n18'
let g:ale_linters = {
            \ 'python' : [ 'pyflakes'], 
            \ 'rust' : [ 'analyzer', 'cargo'], 
            \ 'php' : [ 'php-cs-fixer', 'psalm', 'php'], 
            \}
let g:ale_php_phpcs_executable='./vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='./vendor/bin/php-cs-fixer'
let g:ale_fixers={'php' : [ 'php_cs_fixer' ], 'rust': ['rustfmt'], }


" Snippets
Plug 'SirVer/ultisnips'
Plug 'dilawar/vim-snippets'
let g:snips_author = "Dilawar Singh"
let g:snips_email = "dilawar@subcom.tech"
" let g:UltiSnipsExpandTrigger="<c-space>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" python
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'davidhalter/jedi-vim'
" Plug 'deoplete-plugins/deoplete-jedi'
" let g:deoplete#enable_at_startup = 1
Plug 'dilawar/vim-mypy'

" Easy align
Plug 'junegunn/vim-easy-align'

" plugins
Plug 'chrisbra/unicode.vim'
" Turn TeX symbols into unicode.
Plug 'dilawar/vim-unicoder'

""" LucHermite
"Plug 'tomtom/stakeholders_vim'
"Plug 'LucHermitte/lh-vim-lib'
"Plug 'LucHermitte/alternate-lite'

" pydocstring
Plug 'heavenshell/vim-pydocstring', {'do': 'make install'}
let g:pydocstring_formatter = 'numpy'
let g:pydocstring_doq_path = "$HOME/.local/bin/doq"

" Doxygen
Plug 'vim-scripts/DoxygenToolkit.vim'

" personal
Plug 'ervandew/supertab'
Plug 'chrisbra/unicode.vim'
Plug 'tomtom/tcomment_vim'

" php
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'ncm2/ncm2'
Plug 'dilawar/better-indent-support-for-php-with-html'

Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue,*.php'   

" colorscheme
Plug 'flazz/vim-colorschemes'

" Keep this at the end!
call plug#end()
