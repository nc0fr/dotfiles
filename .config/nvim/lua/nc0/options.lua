-- Copyright 2023 Nicolas Paul. All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the LICENSE file.

-- Neovim options and settings.
-- NOTE: this is a direct port in Lua of my .vimrc

vim.o.backspace = "indent,eol,start"
vim.o.backup = false
vim.o.clipboard = "unnamed"
vim.o.colorcolumn = "50,80,100,120"
vim.o.encoding = "utf-8"
vim.o.expandtab = true
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.laststatus = 2
vim.o.listchars = "eol:⏎,space:·,tab:→ "
vim.o.moise = "a"
vim.o.number = true
vim.o.relativenumber = true
vim.o.ruler = true
vim.o.shiftwidth = 4
vim.o.smartcase = true
vim.o.softtabstop = 4
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.title = true
vim.o.wildmode = "longest,list,full"
