-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        {
            name = "buffer",
            option = {
                -- Do not use buffer completion from large buffers.
                get_bufnrs = function()
                    local buf = vim.api.nvim_get_current_buf()
                    local byte_size = vim.api.nvim_buf_get_offset(buf, vim.api.nvim_buf_line_count(buf))
                    if byte_size > 1024 * 1024 then -- 1 Megabyte max
                        return {}
                    end
                    return { buf }
                end,
            },
        },
        {
            name = "path",
            option = {
                trailing_slash = true,
                label_trailing_slash = true,
            },
        },
        { name = "nvim_lua", option = {
            include_deprecated = false,
        } },
        { name = "spell" },
        {
            name = "latex_symbols",
            option = {
                strategy = 0, -- mixed
            },
        },

        {
            name = "emoji",
            option = {
                insert = true,
            },
        },
    },
})
