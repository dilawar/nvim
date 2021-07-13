" Plugin manager provided by: https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'roxma/vim-tmux-clipboard'

" terminal
Plug 'kassio/neoterm'

" new setup for beta
Plug 'tjdevries/colorbuddy.vim'
Plug 'Th3Whit3Wolf/onebuddy', {'branch': 'main'}
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

" git
Plug 'airblade/vim-gitgutter'

" Use my personal version until changes are accepted by @tpope
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" c-support
Plug 'WolfgangMehner/c-support'

" clang-format'
Plug 'rhysd/vim-clang-format'
let g:clang_format#style_options = {"BasedOnStyle" : "Mozilla"}

" rust
" Plug 'rust-lang/rust.vim'

" Autocomplete and other
" Plug 'ycm-core/YouCompleteMe'
" let g:UltiSnipsExpandTrigger = ";"

" Plug 'dense-analysis/ale'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_cpp_gcc_options = '-std=c++17'
let g:ale_tex_chktex_options = '-n26 -n18'
let g:ale_linters = {
            \ 'python' : [ 'bandit', 'pyflakes', 'pylint'],
            \ 'javascript' : [ 'eslint'],
            \ 'rust' : [ 'analyzer', 'cargo'],
            \ 'php' : [ 'php-cs-fixer', 'psalm', 'php'],
            \}

let g:ale_php_phpcs_executable='./vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='./vendor/bin/php-cs-fixer'

let g:ale_fixers={
        \ 'php' : [ 'php_cs_fixer' ],
        \ 'rust': ['rustfmt'],
        \ 'python': ['black'],
        \ 'javascript': ['eslint'],
        \}


" Snippets
Plug 'SirVer/ultisnips'
Plug 'dilawar/vim-snippets'
let g:snips_author = "Dilawar Singh"
let g:snips_email = "dilawar.s.rajput@gmail.com"
let g:snips_github = "https://github.com/dilawar"

" python
Plug 'dilawar/vim-mypy'

" Easy align
Plug 'junegunn/vim-easy-align'

" plugins
Plug 'chrisbra/unicode.vim'
" Turn TeX symbols into unicode.
Plug 'dilawar/vim-unicoder'

" pydocstring
Plug 'heavenshell/vim-pydocstring', {'do': 'make install'}
let g:pydocstring_formatter = 'numpy'
let g:pydocstring_doq_path = "$HOME/.local/bin/doq"

" Doxygen
Plug 'vim-scripts/DoxygenToolkit.vim'

" personal
Plug 'ervandew/supertab'
Plug 'chrisbra/unicode.vim'

" php
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'ncm2/ncm2'
Plug 'dilawar/better-indent-support-for-php-with-html'

Plug 'craigemery/vim-autotag'

" colorscheme
Plug 'flazz/vim-colorschemes'

" vue
Plug 'posva/vim-vue'
let g:vue_pre_processors=['pug', 'scss']

" strip whitespace
Plug 'itspriddle/vim-stripper'

" close tags
Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue,*.php'

" nim
Plug 'alaviss/nim.nvim'

" alternate
Plug 'dilawar/a.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" cmake and vim
" Plug 'cdelledonne/vim-cmake'
Plug 'ilyachur/cmake4vim'


" Markdown preview.
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
let g:mkdp_preview_options = {'uml': {'server': 'http://services.subcom.tech/plantuml'}}


" pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Keep this at the end!
call plug#end()

"
" Extra here
"
set termguicolors
colorscheme onebuddy
luafile $HOME/.config/nvim/lsp_config.lua
