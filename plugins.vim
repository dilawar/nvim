" Plugin manager provided by: https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'roxma/vim-tmux-clipboard'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

"" toggle term (persistant terminal)
"Plug 'akinsho/toggleterm.nvim', { 'tag' : '*' }
"lua require("toggleterm").setup()

" git
Plug 'airblade/vim-gitgutter'

" Use my personal version until changes are accepted by @tpope
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'github/copilot.vim'

" LSP complete
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" c-support
" Plug 'dilawar/c-support'

" clang-format'
Plug 'rhysd/vim-clang-format'
let g:clang_format#style_options = {"BasedOnStyle" : "Webkit"}

" rust
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
            \ 'python' : [ 'bandit', 'pyflakes', 'pylint'],
            \ 'javascript' : [ 'eslint'],
            \ 'rust' : [ 'analyzer', 'cargo'],
            \ 'php' : [ 'php-cs-fixer', 'psalm', 'php'],
            \ 'nim' : [ 'nimlsp', 'nimcheck'],
            \}

let g:ale_php_phpcs_executable='./vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='./vendor/bin/php-cs-fixer'

let g:ale_fixers={
        \ 'php' : [ 'php_cs_fixer' ],
        \ 'rust': ['rustfmt'],
        \ 'python': ['black'],
        \ 'javascript': ['eslint'],
        \ 'nim': ['nimpretty'],
        \ '*': ['remove_trailing_lines', 'trim_whitespace'],
        \}

let g:ale_rust_rustfmt_options = '+nightly'
let g:ale_rust_cargo_use_clippy = 1
let g:ale_rust_rls_toolchain = 'nightly'
let g:ale_rust_rls_config = {
                \   'rust': {
                \     'clippy_preference': 'on'
                \   }
                \ }


" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
let g:snipMate = { 'snippet_version' : 1 }
Plug 'dilawar/vim-snippets'

" python
"Plug 'dilawar/vim-mypy'

" Easy align
Plug 'junegunn/vim-easy-align'

" plugins
Plug 'chrisbra/unicode.vim'
" Turn TeX symbols into unicode.
Plug 'dilawar/vim-unicoder'

" Firenvim
Plug 'glacambre/firenvim', {'do' : { _ -> firenvim#install(0) } }

" pydocstring
Plug 'heavenshell/vim-pydocstring', {'do': 'make install'}
let g:pydocstring_formatter = 'numpy'
let g:pydocstring_doq_path = "$HOME/.local/bin/doq"

" Docs
Plug 'kkoomen/vim-doge'

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

" rst
Plug 'Rykka/riv.vim'

" pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'rhysd/vim-grammarous'

" Keep this at the end!
call plug#end()

" will work on Windows as well.
execute 'luafile ' . expand('<sfile>:p:h'). '/lsp_config.lua'

" From https://github.com/hrsh7th/nvim-cmp
set completeopt=menu,menuone,noselect
