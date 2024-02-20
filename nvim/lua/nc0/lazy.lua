-- Copyright (c) 2023 Nicolas Paul.  All rights reserved.
-- Use of this source file is governed by the Nicolas Paul
-- Public License, Version 1.0, present in the COPYRIGHT file.

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
    "nvim-tree/nvim-web-devicons",

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
    { "j-hui/fidget.nvim", opts = {} },

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
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/nvim-treesitter-context",
    "JoosepAlviste/nvim-ts-context-commentstring",

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

    -- IDE features (LSP, DAP, Lint, Fmt)

    {
        "neovim/nvim-lspconfig",
        init = function()
            require("nc0.lsp")
        end,
    },
    "b0o/schemastore.nvim",

    -- Auto completion

    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("nc0.cmp")
        end,
    },
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip",
    "f3fora/cmp-spell",
    "kdheepak/cmp-latex-symbols",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-emoji",

    -- Snippets (custom snippets)

    {
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp",
        config = function()
            require("nc0.snippets")
        end,
    },
    "rafamadriz/friendly-snippets",

    -- Lualine

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
                theme = "gruvbox",
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = {
                    "filename",
                    function()
                        return vim.fn["nvim_treesitter#statusline"](180)
                    end,
                },
                lualine_x = { "encoding", "fileformat", "filetype" },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
        },
    },

    -- Git

    { "NeogitOrg/neogit", opts = {} },
    { "lewis6991/gitsigns.nvim", opts = {} },

    -- Utils (refactoring.nvim, GitHub Copilot, &c.).

    "sindrets/diffview.nvim",
    "github/copilot.vim",
    {
        "ThePrimeagen/refactoring.nvim",
        opts = {
            prompt_func_return_type = {
                go = true,
                java = true,
                cpp = true,
                c = true,
                h = true,
                hpp = true,
                cxx = true,
            },
            prompt_func_param_type = {
                go = true,
                java = true,
                cpp = true,
                c = true,
                h = true,
                hpp = true,
                cxx = true,
            },
        },
    },
    {
        "https://codeberg.org/esensar/nvim-dev-container",
        dependencies = "nvim-treesitter/nvim-treesitter",
        opts = {
            generate_commands = true,
            autocommands = {
                -- Automatically start a DevContainer when available.
                init = false,
                -- Automatically remove started DevContainers and images when
                -- exiting.
                clean = false,
                -- Automatically update DevContainers and images when
                -- the configuration changes.
                update = false,
            },
            log_level = "info",
            disable_recursive_config_search = false,
            cache_image = true,
            attach_mounts = {},
            container_runtime = "podman",
            compose_command = "podman-compose",
        },
    },
}

lazy.setup(plugins, {})
