vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.g.mapleader = "<Space>"

require("config.lazy")

vim.opt.termguicolors = true
vim.cmd[[colorscheme dracula]]

vim.opt.hlsearch = false

vim.keymap.set({'x', 'o'}, "il", ':<C-u>silent! normal!  $v^<cr>')
vim.keymap.set({'x', 'o'}, "al", ':<c-u>silent! normal! $v0<cr>')

vim.keymap.set({'n'}, '<Leader>]', '/#%%<cr><cmd>nohl<cr>zz')
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "s", "<nop>")
vim.keymap.set("n", "S", "<nop>")

-- set keymaps for saving and quitting
vim.keymap.set("n", "<Leader>q", ":q<cr>")
vim.keymap.set("n", "<Leader>Q", ":q!<cr>")
vim.keymap.set("n", "<Leader>ww", ":w<cr>")
vim.keymap.set("n", "<Leader>wq", ":wq<cr>")

-- set keymaps for navigating splits
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
