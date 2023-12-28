-- Copyright 2023 Nicolas Paul. All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the LICENSE file.

local packer = require("packer")

packer.startup(function(use)
    use("wbthomason/packer.nvim")

    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-path")
    use("hrsh7th/nvim-cmp")
    use("morhetz/gruvbox")
    use("neovim/nvim-lspconfig")
    use("nvim-lua/plenary.nvim")
    use("nvim-tree/nvim-web-devicons")
    use("ray-x/lsp_signature.nvim")
    use 'hrsh7th/vim-vsnip'
    use 'SirVer/ultisnips'
    use 'quangnguyen30192/cmp-nvim-ultisnips'
    use 'nvim-treesitter/nvim-treesitter'
    use 'mfussenegger/nvim-dap'



end)
