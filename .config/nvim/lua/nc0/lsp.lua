-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local schemastore = require("schemastore")

-- For each server setup, add the following:
--
--     lspconfig.<server>.setup {
--         capabilities = capabilities,
--         ...
--     }
local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig.bashls.setup({
    capabilities = capabilities,
    cmd = { "bash-language-server", "start" },
})

lspconfig.clangd.setup({
    capabilities = capabilities,
    cmd = { "clangd", "--background-index" },
})

lspconfig.cssls.setup({
    capabilities = capabilities,
    cmd = { "vscode-css-language-server", "--stdio" },
})

lspconfig.dockerls.setup({
    capabilities = capabilities,
    cmd = { "docker-langserver", "--stdio" },
})

lspconfig.elixirls.setup({
    capabilities = capabilities,
    cmd = { "elixir-ls" },
})

lspconfig.eslint.setup({
    capabilities = capabilities,
    cmd = { "vscode-eslint-language-server", "--stdio" },
})

lspconfig.gopls.setup({
    capabilities = capabilities,
    cmd = { "gopls", "serve" },
})

lspconfig.html.setup({
    capabilities = capabilities,
    cmd = { "vscode-html-language-server", "--stdio" },
})

lspconfig.jsonls.setup({
    capabilities = capabilities,
    cmd = { "vscode-json-language-server", "--stdio" },
    settings = {
        json = {
            schemas = schemastore.json.schemas(),
            validate = { enable = true },
        },
    },
})

lspconfig.lua_ls.setup({
    capabilities = capabilities,
    cmd = { "lua-language-server" },
})

lspconfig.marksman.setup({
    capabilities = capabilities,
    cmd = { "marksman", "server" },
})

lspconfig.pyright.setup({
    capabilities = capabilities,
    cmd = { "pyright-langserver", "--stdio" },
})

lspconfig.zls.setup({
    capabilities = capabilities,
    cmd = { "zls" },
})

lspconfig.yamlls.setup({
    capabilities = capabilities,
    cmd = { "yaml-language-server", "--stdio" },
    settings = {
        yaml = {
            schemaStore = {
                enable = false,
                url = "",
            },
            schemas = schemastore.yaml.schemas(),
        },
        redhat = {
            telemetry = {
                enable = false,
            },
        },
    },
})

lspconfig.texlab.setup({
    capabilities = capabilities,
    cmd = { "texlab" },
})

lspconfig.tailwindcss.setup({
    capabilities = capabilities,
    cmd = { "tailwindcss-language-server", "--stdio" },
})

lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
    cmd = { "rust-analyzer" },
    settings = {
        ["rust-analyzer"] = {
            assist = {
                emitMustUse = true,
                expressionFillDefault = "todo",
            },
            cachePriming = {
                enable = true,
                -- `0` means auto-detect based on the number of cores.
                numThreads = 0,
            },
            cargo = {
                autoreload = true,
                buildScripts = {
                    enable = true,
                },
            },
            checkOnSave = true,
            check = {
                allTargets = true,
                -- Clippy is a whole linter.
                command = "clippy",
            },
            completion = {
                autoimport = {
                    enable = true,
                },
                autoself = {
                    enable = true,
                },
                callable = {
                    snippets = "fill_arguments",
                },
                fullFunctionSignature = {
                    enable = true,
                },
            },
            diagnostics = {
                enable = true,
                experimentral = {
                    enable = true,
                },
            },
            inlayHints = {
                bindingModeHints = { enable = true },
                chainingHints = { enable = true },
                closingBraceHints = { enable = true },
                closureCaptureHints = { enable = true },
                closureReturnTypeHints = { enable = "always" },
                discriminantHints = { enable = "always" },
                expressionAdjustmentHints = { enable = "always" },
                implicitDrops = { enable = true },
                lifetimeElisionHints = { enable = "always" },
                parameterHints = { enable = true },
                typeHints = { enable = true },
            },
            procMacro = {
                attributes = {
                    enable = true,
                },
                enable = true,
            },
            semanticHighlighting = {
                doc = { comment = { inject = { enable = true } } },
                nonStandardTokens = true,
                operator = { enable = true },
                signatureInfo = {
                    detail = "full",
                    documentation = { enable = true },
                },
                typing = { autoClosingAngleBrackets = { enable = false } },
            },
        },
    },
})

lspconfig.tsserver.setup({
    capabilities = capabilities,
    cmd = { "typescript-language-server", "--stdio" },
})

lspconfig.ocamllsp.setup({
    capabilities = capabilities,
    cmd = { "ocamllsp" },
})

-- +=====================================================+
-- | Some mappings are directly defined using Telescope. |
-- | See the `telescope.lua` file for more information.  |
-- +=====================================================+

--vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<Leader>q', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<Leader>ww", vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set("n", "<Leader>wd", vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set("n", "<Leader>wl", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        -- vim.keymap.set('n', '<Leader>gt', vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "v" }, "<Leader>cc", vim.lsp.buf.code_action, opts)
        -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<Leader>lf", function()
            vim.lsp.buf.format({ async = true })
        end, opts)
    end,
})
