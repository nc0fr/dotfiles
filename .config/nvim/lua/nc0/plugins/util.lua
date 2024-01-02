-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

-- Common dependencies.

return {
    -- Common utilities an Lua functions.
    { "nvim-lua/plenary.nvim", lazy = true },

    -- Measure startup time.
    {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
        config = function()
            vim.g.startuptime_tries = 10
        end,
    },
}
