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

# Options
set autoindent
set backspace=indent,eol,start
set clipboard=unnamed
set colorcolumn=50,72,80,100,120
set encoding=utf-8
set expandtab 
set ignorecase
set incsearch
set laststatus=0
set listchars=eol:⏎,space:·,tab:→\ 
set matchpairs=(:),{:},[:],<:>
set mouse=a
set nobackup
set nohlsearch
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

set background=dark
colo retrobox
# sorbet is pretty cool too

# Do not use spaces in Go
autocmd BufEnter * if &filetype == "go" | setlocal noexpandtab

# Keymappings

# Set the leader key, which is the base key for all custom mappings,
# unless required otherwise, the rationale being keys defined on the
# leader key are most likely to not override any existing binding.
g:mapleader = ","

