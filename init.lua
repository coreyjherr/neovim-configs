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

vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#282a36'})
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#282a36'})


vim.cmd[[colorscheme dracula]]

vim.keymap.set({"n", "o", "v"}, "<Leader>j", function() require'hop'.hint_lines_skip_whitespace({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR}) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>k", function() require'hop'.hint_lines_skip_whitespace({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR}) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>l", function() require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR }) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>h", function() require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR }) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>w", function() require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR }) end)
vim.keymap.set({"n", "o", "v"}, "<Leader>b", function() require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR }) end)

vim.keymap.set({'x', 'o'}, "il", ':<C-u>silent! normal!  $v^<cr>')
vim.keymap.set({'x', 'o'}, "al", ':<c-u>silent! normal! $v0<cr>')

vim.keymap.set({'n'}, '<Leader>]', '/#%%<cr><cmd>nohl<cr>zz')
vim.keymap.set("i", "jk", "<Esc>")
