-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

-- Colorschemes and user interface plugins.

return {
    -- The GruvBox color scheme
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

    -- Port of VS Code's TokyoNight theme.
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    -- A UI for the progress API.
    "j-hui/fidget.nvim",
}
