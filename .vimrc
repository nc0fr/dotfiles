" Copyright 2023 Nicolas Paul. All rights reserved.
" Use of this source code is governed by a BSD-style
" license that can be found in the LICENSE file.
vim9script

# VIM configuration (https://vim.org).
# See ':help <option>' for a detailled description
# about each settings.

set nocompatible
filetype plugin on
syntax on

# Plugins
# -------
#
#  Manually installed within the ".vim/pack/nc0/{start,opt}".
#
#  Installed plugins:
#
#    * fzf
#       -> https://github.com/junegunn/fzf
#    * fzf.vim
#       -> https://github.com/junegunn/fzf.vim
#    * editorconfig
#       -> https://github.com/editorconfig/editorconfig-vim
#    * textobj-user
#       -> https://github.com/kana/vim-textobj-user
#    * textobj-indent
#       -> https://github.com/kana/vim-textobj-indent
#    * textobj-word-column
#       -> https://github.com/coderifous/textobj-word-column.vim

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
set wildoptions=fuzzy,pum,tagfile

set background=dark
colo retrobox
# sorbet is pretty cool too

# Keymappings

# Set the leader key, which is the base key for all custom mappings,
# unless required otherwise, the rationale being keys defined on the
# leader key are most likely to not override any existing binding.
g:mapleader = ","

# FZF configuration

nmap <Leader>ff :Files<CR>
nmap <Leader>fg :GFiles<CR>
nmap <Leader>fc :Colors<CR>
nmap <Leader>fb :Buffers<CR>
nmap <Leader>fw :Windows<CR>
nmap <Leader>fh :History<CR>

# EditorConfig configuration

g:EditorConfig_exclude_patterns = ['fugitive://.*']

