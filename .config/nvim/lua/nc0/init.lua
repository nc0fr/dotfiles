-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

-- TODO(nc0): Completion for APL and J symbols, probably using
-- `nvim-cmp`, in a similar fashion the `cmp-latex-symbols` plugin or
-- `cmp-emoji` are doing it.

require("nc0.lazy")

vim.keymap.set("n", "<Leader>s", ":sort<CR>", { noremap = true }) -- Sort
vim.keymap.set("n", "U", "<C-r>", { noremap = true }) -- Redo

-- I often type too quickly for Terminal.app to keep up, which therefore
-- registers w as W.
vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
