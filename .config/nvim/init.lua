-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

--                         █████
--                       ███░░░███
--  ████████    ██████  ███   ░░███     Nicolas Paul
-- ░░███░░███  ███░░███░███    ░███
--  ░███ ░███ ░███ ░░░ ░███    ░███     n@nc0.fr
--  ░███ ░███ ░███  ███░░███   ███      https://x.com/nc0_r
--  ████ █████░░██████  ░░░█████░
-- ░░░░ ░░░░░  ░░░░░░     ░░░░░░
--
-- Nicolas Paul's Neovim configuration.
--
-- The configuration is structured organically, following the concept
-- of VIM's runtimepath (rpt).
-- This means that the configuration is separated in different directories
-- depending on their goals.  See `:help rtp` for more information.

-- Define the <Leader> key early to avoid the risk of keymappings using
-- the wrong one.
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Neovim options

vim.g.loaded_matchparen = 1

vim.o.autoindent = true
vim.o.belloff = 'all'
vim.o.breakindent = true
vim.o.cindent = true
vim.o.clipboard = 'unnamed'
vim.o.cmdheight = 1
vim.o.cursorline = true
vim.o.colorcolumn = '80'
vim.o.diffopt = 'internal,filler,closeoff,hiddenoff,algorithm:minimal'
vim.o.equalalways = false
vim.o.expandtab = true
vim.o.foldlevel = 0
vim.o.foldmethod = 'marker'
vim.o.formatoptions = 'crqn'
vim.o.hidden = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.inccommand = 'split'
vim.o.incsearch = true
vim.o.joinspaces = false -- No longer a common practice :/
vim.o.linebreak = true
vim.o.list = true
vim.o.listchars = 'trail:␣,nbsp:⍽'
vim.o.modelines = 1
vim.o.mouse = 'a'
vim.o.number = true
vim.o.pumblend = 17
vim.o.relativenumber = true
vim.o.scrolloff = 10
vim.o.shada = "!,'1000,<50,s10,h"
vim.o.shiftwidth = 4
vim.o.showbreak = ' ↵'
vim.o.showcmd = true
vim.o.showmode = false
vim.o.showmatch = true
vim.o.showmode = false
vim.o.signcolumn = 'yes'
vim.o.smartcase = true
vim.o.smoothscroll = true
vim.o.softtabstop = 4
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.undofile = true
vim.o.updatetime = 1000
vim.o.wildmode = 'longest:full'
vim.o.wildoptions = 'pum'
vim.o.wrap = true

vim.cmd [[ set background=light ]]
vim.cmd [[ colo morning]]

