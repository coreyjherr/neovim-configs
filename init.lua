if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
end

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.clipboard = 'unnamedplus'

vim.g.mapleader = "<Space>"

require("config.lazy")

require'hop'.setup()

vim.cmd[[colorscheme dracula]]

vim.keymap.set({"n", "o", "v"}, "<Leader>j", function() require'hop'.hint_lines_skip_whitespace({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR}) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>k", function() require'hop'.hint_lines_skip_whitespace({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR}) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>l", function() require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR }) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>h", function() require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR }) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>w", function() require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR }) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>b", function() require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR }) end)

vim.keymap.set({'x', 'o'}, "il", ':<C-u>silent! normal!  $v^<cr>')
vim.keymap.set({'x', 'o'}, "al", ':<c-u>silent! normal! $v0<cr>')

vim.keymap.set({'n'}, '<Leader>]', '/#%%<CR>:nohl<CR>')
