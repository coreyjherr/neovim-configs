return {
{
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end,
},
{
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup{
            ensure_installed = {"clangd", "pyright", "lua_ls"},
        }
    end,
},
{
    "neovim/nvim-lspconfig",
    config = function()
        require("lspconfig").pyright.setup{}
        require("lspconfig").clangd.setup{}
        require("lspconfig").lua_ls.setup{}
    end,
},
}
