-- Copyright (c) 2023 Nicolas Paul.  All rights reserved.
-- Use of this source file is governed by the Nicolas Paul
-- Public License, Version 1.0, present in the COPYRIGHT file.

local ts_config = require("nvim-treesitter.configs")

ts_config.setup({
    ensure_installed = {
        "arduino",
        "astro",
        "bash",
        "bibtex",
        "c",
        "capnp",
        "cmake",
        "comment",
        "commonlisp",
        "cpp",
        "css",
        "csv",
        "cuda",
        "diff",
        "dockerfile",
        "dot",
        "doxygen",
        "ebnf",
        "eex",
        "elixir",
        "erlang",
        "forth",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "glsl",
        "gn",
        "gomod",
        "gosum",
        "gowork",
        "gpg",
        "graphql",
        "hare",
        "heex",
        "hlsl",
        "html",
        "http",
        "ini",
        "java",
        "javascript",
        "jq",
        "jsdoc",
        "json",
        "json5",
        "jsonc",
        "latex",
        "llvm",
        "lua",
        "luadoc",
        "luap",
        "make",
        "markdown",
        "markdown_inline",
        "nim",
        "nim_format_string",
        "ninja",
        "nix",
        "ocaml",
        "ocaml_interface",
        "ocamllex",
        "passwd",
        "perl",
        "php",
        "phpdoc",
        "po",
        "python",
        "query",
        "regex",
        "requirements",
        "rust",
        "sql",
        "ssh_config",
        "starlark",
        "svelte",
        "swift",
        "textproto",
        "thrift",
        "todotxt",
        "toml",
        "tsx",
        "typescript",
        "uxntal",
        "verilog",
        "vim",
        "vimdoc",
        "vue",
        "wgsl",
        "xml",
        "yaml",
        "zig",
    },
    auto_install = true,
    highlight = {
        enable = true,
    },
})
