return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    event = {"BufReadPre", "BufNewFile"},
    config = function()
        local lspconfig = require("lspconfig")

        -- set keybinds
        vim.keymap.set("n", "gR", require'telescope.builtin'.lsp_references)

        vim.keymap.set("n", "gD", vim.lsp.buf.declaration)

        vim.keymap.set("n", "gd", require'telescope.builtin'.lsp_definitions)

        vim.keymap.set("n", "gi", require'telescope.builtin'.lsp_implementations)

        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

        vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)

        vim.keymap.set("n", "K", vim.lsp.buf.hover)
        vim.keymap.set({ 'n', 'i' }, '<C-k>', vim.lsp.buf.signature_help)


        lspconfig.clangd.setup{}
        lspconfig.pyright.setup{}
        lspconfig.lua_ls.setup{settings = {
            Lua = {
              -- make the language server recognize "vim" global
              diagnostics = {
                globals = { "vim" },}}}}
    end,
}
