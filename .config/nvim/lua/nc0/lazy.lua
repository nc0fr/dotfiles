-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

local lazy = require("lazy")

local plugins = {
    -- Utils

    {
        "nvim-lua/plenary.nvim",
        lazy = true,
    },

    {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
        config = function()
            vim.g.startuptime_tries = 10
        end,
    },

    { "nvim-tree/nvim-web-devicons" },

    -- UI

    {
        "ellisonleao/gruvbox.nvim",
        lazy = true,
        priority = 1000,
        opts = {
            bold = true,
            contrast = "soft",
            dim_inactive = false,
            inverse = true,
            invert_intend_guides = false,
            invert_selection = true,
            invert_signs = false,
            invert_tabline = false,
            italic = {
                comments = true,
                emphasis = true,
                folds = true,
                operators = true,
                strings = true,
            },
            strikethrough = true,
            terminal_colors = true,
            transparent_mode = true,
            undercurl = true,
            underline = true,
        },
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    { "j-hui/fidget.nvim" },

    -- Editor

    {
        "folke/flash.nvim",
        event = "VeryLazy",
        vscode = true,
        ---@type Flash.Config
        opts = {},
        keys = {
            {
                "s",
                mode = { "n", "x", "o" },
                function()
                    require("flash").jump()
                end,
                desc = "Flash",
            },
            {
                "S",
                mode = { "n", "o", "x" },
                function()
                    require("flash").treesitter()
                end,
                desc = "Flash Treesitter",
            },
            {
                "r",
                mode = "o",
                function()
                    require("flash").remote()
                end,
                desc = "Remote Flash",
            },
            {
                "R",
                mode = { "o", "x" },
                function()
                    require("flash").treesitter_search()
                end,
                desc = "Treesitter Search",
            },
            {
                "<c-s>",
                mode = { "c" },
                function()
                    require("flash").toggle()
                end,
                desc = "Toggle Flash Search",
            },
        },
    },

    {
        "folke/trouble.nvim",
        opts = {
            -- enable to use the LSP client signs
            use_diagnostic_signs = false,
        },
    },

    -- Tree-sitter

    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nc0.treesitter")
        end,
    },

    { "nvim-treesitter/nvim-treesitter-textobjects" },

    { "nvim-treesitter/nvim-treesitter-context" },

    { "JoosepAlviste/nvim-ts-context-commentstring" },

    -- Telescope

    {
        "nvim-telescope/telescope.nvim",
        config = function()
            require("nc0.telescope")
        end,
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },

    -- LSP

    { "williamboman/mason.nvim" },

    { "williamboman/mason-lspconfig.nvim" },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nc0.lsp")
        end,
    },

    -- Auto completion
}

lazy.setup(plugins, {})
