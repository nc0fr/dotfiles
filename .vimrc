" Copyright 2023 Nicolas Paul. All rights reserved.
" Use of this source code is governed by a BSD-style
" license that can be found in the LICENSE file.
vim9script

#                         █████
#                       ███░░░███
#  ████████    ██████  ███   ░░███     Nicolas Paul
# ░░███░░███  ███░░███░███    ░███
#  ░███ ░███ ░███ ░░░ ░███    ░███     n@nc0.fr
#  ░███ ░███ ░███  ███░░███   ███      https://x.com/nc0_r
#  ████ █████░░██████  ░░░█████░
# ░░░░ ░░░░░  ░░░░░░     ░░░░░░
#
# VIM configuration (https://vim.org).
# See ':help <option>' for a detailled description
# about each settings.

set nocompatible
filetype plugin on
syntax on

# Plugins
# -------
#
# Manually installed within the ".vim/pack/nc0/{start,opt}".
# Installed plugins:
#
#   * asyncomplete           -> https://github.com/prabirshrestha/asyncomplete.vim
#   * asyncomplete-emoji     -> https://github.com/prabirshrestha/asyncomplete-emoji.vim
#   * asyncomplete-file      -> https://github.com/prabirshrestha/asyncomplete-file.vim
#   * asyncomplete-lsp       -> https://github.com/prabirshrestha/asyncomplete-lsp.vim
#   * asyncomplete-ultisnips -> https://github.com/prabirshrestha/asyncomplete-ultisnips.vim
#   * editorconfig           -> https://github.com/editorconfig/editorconfig-vim
#   * fugitive               -> https://github.com/tpope/vim-fugitive
#   * fzf                    -> https://github.com/junegunn/fzf
#   * fzf.vim                -> https://github.com/junegunn/fzf.vim
#   * lsp                    -> https://github.com/prabirshrestha/vim-lsp
#   * lsp-settings           -> https://github.com/mattn/vim-lsp-settings
#   * sneak                  -> https://github.com/justinmk/vim-sneak
#   * surround               -> https://github.com/tpope/vim-surround
#   * tabular                -> https://github.com/godlygeek/tabular
#   * textobj-indent         -> https://github.com/kana/vim-textobj-indent
#   * textobj-user           -> https://github.com/kana/vim-textobj-user
#   * textobj-word-column    -> https://github.com/coderifous/textobj-word-column.vim

# Options

set autoindent
set autoread
set backspace=indent,eol,start
set belloff=all
set clipboard=unnamed
set colorcolumn=80
set encoding=utf-8
set expandtab
set hidden
set history=10000
set hlsearch
set ignorecase
set incsearch
set laststatus=0
set list
set listchars=trail:·,tab:→\
set matchpairs=(:),{:},[:],<:>
set mouse=a
set nobackup
set noshowcmd
set noswapfile
set number
set relativenumber
set ruler
set shiftwidth=4
set smartcase
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set title
set wildmode=longest,list,full
set wildoptions=pum,tagfile

set background=dark
colo gruvbox
# sorbet is pretty cool too

# Keymappings

# Set the leader key, which is the base key for all custom mappings,
# unless required otherwise, the rationale being keys defined on the
# leader key are most likely to not override any existing binding.
g:mapleader = ","

# NetRW configuration
#
# NetRW is an amazing plugin to discover files without the issues of a project
# drawer.
# See http://vimcasts.org/blog/2013/01/oil-and-vinegar-split-windows-and-project-drawer/

nmap <Leader>t :Explore<CR>

# FZF configuration

nmap <Leader>fb :Buffers<CR>
nmap <Leader>fc :Colors<CR>
nmap <Leader>ff :Files<CR>
nmap <Leader>fg :GFiles<CR>
nmap <Leader>fh :History<CR>
nmap <Leader>fw :Windows<CR>

# EditorConfig configuration

g:EditorConfig_exclude_patterns = ['fugitive://.*']

# Sneak configuration

map F <Plug>Sneak_F
map T <Plug>Sneak_T
map f <Plug>Sneak_f
map t <Plug>Sneak_t

# LSP configuration

setlocal omnifunc=lsp#complete
setlocal signcolumn=yes

if exists('+tagfunc')
    setlocal tagfunc=lsp#tagfunc
endif

nmap     <Leader>cc  :LspCodeLens<CR>
nmap     <Leader>rn  :LspRename<CR>
nmap     K           :LspHover<CR>
nmap     [g          :LspPreviousDiagnostic<CR>
nmap     ]g          :LspNextDiagnostic<CR>
nmap     gd          :LspDefinition<CR>
nmap     gi          :LspImplementation<CR>
nmap     gr          :LspReference<CR>
nmap     gt          :LspTypeDefinition<CR>
nmap     <Leader>pd  :LspPeekDefinition<CR>
nmap     <Leader>pi  :LspPeekImplementation<CR>
nmap     <Leader>pr  :LspPeekReference<CR>
nmap     <Leader>pt  :LspPeekTypeDefinition<CR>
nnoremap <Expr><C-d> lsp#scroll(-4)
nnoremap <Expr><C-f> lsp#scroll(+4)

g:lsp_format_sync_timeout = 1000

set foldmethod=expr
set foldexpr=lsp#ui#vim#folding#foldexpr()
set foldtext=lsp#ui#vim#folding#foldtext()

g:lsp_fold_enabled = 0

g:lsp_diagnostics_enabled = 1
g:lsp_document_highlight_enabled = 1

# Auto completion configuration

inoremap <Expr> <Tab>   pumvisible()
    \                       ? "\<C-n>"
    \                       : "\<Tab>"
inoremap <Expr> <S-Tab> pumvisible()
    \                       ? "\<C-p>"
    \                       : "\<S-Tab>"
inoremap <Expr> <CR>    pumvisible()
    \                       ? asyncomplete#close_popup()
    \                       : "\<CR>"
imap <C-Space>          <Plug>(asyncomplete_force_refresh)

g:asyncomplete_auto_popup = 1

# preview window
g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

au User asyncomplete_setup
    \ call asyncomplete#register_source(
    \ asyncomplete#sources#file#get_source_options(
    \   { 'name': 'file', 'allowlist': ['*'], 'priority': 10,
    \     'completor': function('asyncomplete#sources#file#completor') }
    \ ))

au User asyncomplete_setup
    \ call asyncomplete#register_source(
    \ asyncomplete#sources#emoji#get_source_options(
    \   { 'name': 'emoji', 'allowlist': ['*'],
    \     'completor': function('asyncomplete#sources#emoji#completor') }
    \ ))

