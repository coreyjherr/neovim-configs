return {
{
    "hadronized/hop.nvim",
    config = function()
        require("hop").setup()
    end,
},
{
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
},
{
    'sgur/vim-textobj-parameter',
    dependencies = {
        "kana/vim-textobj-user"
    }
},
{ 'github/copilot.vim', name='copilot'}

}
