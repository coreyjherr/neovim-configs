return {
    {
        'nvim-telescope/telescope.nvim', tag='0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('plugins.telescope')
            local builtin = require('telescope.builtin')
            local telescope = require('telescope')
            local actions = require('telescope.actions')
            vim.keymap.set('n', '<leader>ff', builtin.find_files)
            vim.keymap.set('n', '<leader>fg', builtin.live_grep)
            vim.keymap.set('n', '<leader>fb', builtin.buffers)
            vim.keymap.set('n', '<leader>fh', builtin.help_tags)
            vim.keymap.set('n', '<leader>fj', builtin.git_files)
            telescope.setup({
                defaults = {
                    path_display = { "smart" },
                        mappings = {
                        i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        },
                    },
                },
            })
        end,
    }
}
