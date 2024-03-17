-- Copyright (c) 2024 Nicolas Paul.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

--
--          .-') _   ('-.                     (`-.           _   .-')
--         ( OO ) )_(  OO)                  _(OO  )_        ( '.( OO )_
--     ,--./ ,--,'(,------. .-'),-----. ,--(_/   ,. \ ,-.-') ,--.   ,--.)
--     |   \ |  |\ |  .---'( OO'  .-.  '\   \   /(__/ |  |OO)|   `.'   |
--     |    \|  | )|  |    /   |  | |  | \   \ /   /  |  |  \|         |
--     |  .     |/(|  '--. \_) |  |\|  |  \   '   /,  |  |(_/|  |'.'|  |
--     |  |\    |  |  .--'   \ |  | |  |   \     /__),|  |_.'|  |   |  |
--     |  | \   |  |  `---.   `'  '-'  '    \   /   (_|  |   |  |   |  |
--     `--'  `--'  `------'     `-----'      `-'      `--'   `--'   `--'
--
--
-- Nicolas Paul's Neovim configuration entry point.  This file is written in
-- Lua as it is the most powerful and recommended way to configure Neovim.
-- I first thought about using Fennel, as I love Lisp, but I think removing an
-- abstraction and build time dependency is a good thing.
--
-- This configuration is scattered in multiple files in various directories,
-- trying to follow the "pseudo-standard" runtime layout of VIM-like editors.

-- Leader key, set before anything else to avoid any registration issues.
vim.g.mapleader      = ' '
vim.g.maplocalleader = ' '

-- Supposedly used by some plugins that come built-in with the shitty nerd
-- stuff.  I don't want it, so no thanks.
-- (source: kickstart.nvim)
vim.g.have_nerd_font = false

-- Editor options
-- Use :h to get more information about each option.
--
-- Also keep in mind that Neovim enables some options by default, reducing the
-- configuration compared to classical VIM 8.
vim.opt.autoindent = false
vim.opt.clipboard = 'unnamed'
vim.opt.cursorline = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = 'split'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 15
vim.opt.showmode = false
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true

-- Set theme,
-- I use the default theme, but I want to use the light variant when I'm using
-- my OS in light mode, and the dark variant when I'm using my OS in dark mode.
vim.opt.termguicolors = true
vim.opt.background = 'light'
vim.cmd('colorscheme default')

-- Set the font to use MonoLisa, a font I bought and love.
-- Only useful when using GUI version of VIM, which I will probably never do.
vim.opt.guifont = 'MonoLisa Nerd Font:h12'

-- Key mappings
-- I use most of the default key mappings, for flexibility and portability.
-- I do not want to feel lost when I'm using another Neovim instance, e.g.
-- remote servers.

-- Because I type to quickly
vim.keymap.set('n', 'W', 'w')
vim.keymap.set('n', 'Wq', 'wq')

-- Disable arrow keys, I want to use hjkl instead.
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>',
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>',
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>',
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>',
    { noremap = true, silent = true })

-- See http://vimcasts.org/blog/2013/01/oil-and-vinegar-split-windows-and-project-drawer/
vim.api.nvim_set_keymap('n', '<Leader>t', ':Explore<CR>',
    { noremap = true, silent = true })

-- Quick way to :nohl
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev,
    { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next,
    { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float,
    { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist,
    { desc = 'Open diagnostic [Q]uickfix list' })

-- Be a chad
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>',
    { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>',
    { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>',
    { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>',
    { desc = 'Move focus to the upper window' })
