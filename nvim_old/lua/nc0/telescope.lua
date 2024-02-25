-- Copyright (c) 2023 Nicolas Paul.  All rights reserved.
-- Use of this source file is governed by the Nicolas Paul
-- Public License, Version 1.0, present in the COPYRIGHT file.

local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
    defaults = {
        prompt_prefix = "> ",
        selection_caret = "> ",
        entry_prefix = "  ",
        multi_icon = "<>",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        scroll_strategy = "cycle",
        color_devicons = true,
        mappings = {},
    },
    pickers = {
        buffers = {
            sort_lastused = true,
            sort_mru = true,
        },
        find_files = {
            hidden = true,
        },
    },
    extensions = {
        fzf = {
            -- false will only do exact matching
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            -- or 'ignore_case', 'respect_case'
            case_mode = "smart_case",
        },
    },
})

telescope.load_extension("fzf")

vim.keymap.set("n", "<Leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<Leader>fF", builtin.live_grep, {})

vim.keymap.set("n", "<Leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<Leader>fC", builtin.commands, {})
vim.keymap.set("n", "<Leader>fc", builtin.command_history, {})
vim.keymap.set("n", "<Leader>lc", builtin.colorscheme, {})
vim.keymap.set("n", "<Leader>lm", builtin.man_pages, {})
vim.keymap.set("n", "<Leader>ss", builtin.spell_suggest, {})
vim.keymap.set("n", "<Leader>fk", builtin.keymaps, {})

vim.keymap.set("n", "<Leader>lr", builtin.lsp_references, {})
vim.keymap.set("n", "<Leader>li", builtin.lsp_incoming_calls, {})
vim.keymap.set("n", "<Leader>lo", builtin.lsp_outgoing_calls, {})
vim.keymap.set("n", "<Leader>ls", builtin.lsp_workspace_symbols, {})
vim.keymap.set("n", "<Leader>dd", builtin.diagnostics, {})
vim.keymap.set("n", "gi", builtin.lsp_implementations, {})
vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
vim.keymap.set("n", "gt", builtin.lsp_type_definitions, {})

vim.keymap.set("n", "<Leader>lgc", builtin.git_commits, {})
vim.keymap.set("n", "<Leader>lgb", builtin.git_branches, {})
vim.keymap.set("n", "<Leader>lgg", builtin.git_status, {})
vim.keymap.set("n", "<Leader>lgs", builtin.git_stash, {})

vim.keymap.set("n", "<Leader>lt", builtin.treesitter, {})
