-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

-- Tree-sitter integration

return {
    -- Tree-sitter integration.
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nc0.treesitter")
        end,
    },

    -- Provide new text objects powered by Tree-sitter.
    "nvim-treesitter/nvim-treesitter-textobjects",

    -- Always show the current context thanks to Tree-sitter.
    "nvim-treesitter/nvim-treesitter-context",

    -- Intelligent line commenting powered by Tree-sitter.
    "JoosepAlviste/nvim-ts-context-commentstring",
}
