-- Copyright (c) 2023 Nicolas Paul.  All rights reserved.
-- Use of this source file is governed by the Nicolas Paul
-- Public License, Version 1.0, present in the COPYRIGHT file.

-- Define the <Leader> key early to avoid the risk of keymappings using
-- the wrong one.
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Neovim options

vim.g.loaded_matchparen = 1

vim.o.autoindent = true
vim.o.belloff = "all"
vim.o.breakindent = true
vim.o.cindent = true
vim.o.clipboard = "unnamed"
vim.o.cmdheight = 1
vim.o.cursorline = true
vim.o.colorcolumn = "80"
vim.o.diffopt = "internal,filler,closeoff,hiddenoff,algorithm:minimal"
vim.o.equalalways = false
vim.o.expandtab = true
vim.o.foldlevel = 0
vim.o.foldmethod = "marker"
vim.o.formatoptions = "crqn"
vim.o.hidden = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.inccommand = "split"
vim.o.incsearch = true
vim.o.joinspaces = false -- No longer a common practice :/
vim.o.linebreak = true
vim.o.list = true
vim.o.listchars = "trail:␣,nbsp:⍽,tab:  "
vim.o.modelines = 1
vim.o.mouse = "a"
vim.o.number = true
vim.o.pumblend = 17
vim.o.relativenumber = true
vim.o.scrolloff = 10
vim.o.shada = "!,'1000,<50,s10,h"
vim.o.shiftwidth = 4
vim.o.showbreak = "↪"
vim.o.showcmd = true
vim.o.showmode = false
vim.o.showmatch = false
vim.o.showmode = false
vim.o.signcolumn = "yes"
vim.o.smartcase = true
vim.o.smoothscroll = true
vim.o.softtabstop = 4
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.undofile = true
vim.o.updatetime = 1000
-- vim.o.wildmode = "longest:full"
vim.o.wildoptions = "pum"
vim.o.wrap = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("nc0")
-- require("work")

-- Setting the colorscheme
vim.cmd [[
set background=dark
colorscheme alabaster
]]

