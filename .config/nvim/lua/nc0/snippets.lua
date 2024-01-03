-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

local luasnip = require("luasnip")

luasnip.setup({})

-- TODO(nc0): custom snippets (shared ones are mostly typing skill issues IMHO)

vim.keymap.set({ "i" }, "<C-K>", function()
    ls.expand()
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-L>", function()
    ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function()
    ls.jump(-1)
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-E>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, { silent = true })
